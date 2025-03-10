#!/bin/sh

# Выгружаем БД и копируем на другую машину

BACKUP_SERVER=192.168.10.25
DUMP_PATH=/tmp
USG_MSG="Usage: pg_dump_db.sh database_name"
TODAY=`date +%Y%m%d_%H%M%S`

if [ -z $1 ] ; then
    echo $USG_MSG
    exit
fi

# Формируем имя дампа с текущей датой и временем
DUMP_NAME=$1_$TODAY.gz

# Coздаем копию БД в архиве gzip
sudo -u postgres pg_dump -Z9 $1 > $DUMP_PATH/$DUMP_NAME

# Проверяем доступность сервера для копирования
ping -c 1 $BACKUP_SERVER > /dev/null

if [ $? -eq 0 ]; then
    # Если сервер доступен - копируем созданный архив молча
    scp $DUMP_PATH/$DUMP_NAME madmin@$BACKUP_SERVER:backup_db
else
    # Если не доступен - так и говорим
    echo "Server $BACKUP_SERVER is not available. Backup not created"
fi

# Удаляем локальный архив
rm $DUMP_PATH/$DUMP_NAME
