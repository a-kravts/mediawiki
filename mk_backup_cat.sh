#!/bin/bash

#Архивируем каталог и копируем на другую машину

ARCHIV_NAME=mediawiki_`date +%Y%m%d_%H%M%S`
BACKUP_SERVER=
USG_MSG="Usage: mk_backup_cat.sh path_to_target_catalog"
ERR_MSG="Bad argument!"

if [ -z $1 ] ; then
    echo $USG_MSG
    exit
fi

if [ ! -d $1 ]; then
    echo $ERR_MSG
    echo $USG_MSG
    exit
fi

#Получить путь до целевого каталога без его имени
PATH_T=`dirname $1`

#Сформировать архив в каталоге цели
tar -czf $PATH_T/$ARCHIV_NAME $1

#Проверить доступность сервера для копирования
ping -c 1 $BACKUP_SERVER > /dev/null

if [ $? -eq 0 ]; then
    #Если сервер доступен - копируем созданный архив молча
    scp $PATH_T/$ARCHIV_NAME madmin@$BACKUP_SERVER:/backup_dir
else
    #Если не доступен - так и говорим
    echo "Server $BACKUP_SERVER is not available. Backup not created"
fi

#Удаляем локальный архив
rm $PATH_T/$ARCHIV_NAME
