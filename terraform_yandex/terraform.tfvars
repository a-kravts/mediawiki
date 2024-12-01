virtual_machines = {
    "vm-1" = {
      vm_name      = "vm01" # Имя ВМ
      vm_desc      = "Балансировщик" # Описание
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 10 # Объём диска в ГБ
      disk_name    = "vda1" # Название диска
      template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
    "vm-2" = {
      vm_name      = "vm02" # Имя ВМ
      vm_desc      = "Основная БД + mediawiki"
      vm_cpu       = 2 # Кол-во ядер процессора
      ram          = 2 # Оперативная память в ГБ
      disk         = 20 # Объём диска в ГБ
      disk_name    = "vda2" # Название диска
      template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
    "vm-3" = {
          vm_name      = "vm03" # Имя ВМ
          vm_desc      = "Реплика БД 1 + mediawiki"
          vm_cpu       = 2 # Кол-во ядер процессора
          ram          = 2 # Оперативная память в ГБ
          disk         = 20 # Объём диска в ГБ
          disk_name    = "vda3" # Название диска
          template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
    "vm-4" = {
          vm_name      = "vm04" # Имя ВМ
          vm_desc      = "Реплика БД 2 + mediawiki"
          vm_cpu       = 2 # Кол-во ядер процессора
          ram          = 2 # Оперативная память в ГБ
          disk         = 20 # Объём диска в ГБ
          disk_name    = "vda4" # Название диска
          template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
    "vm-5" = {
          vm_name      = "vm05" # Имя ВМ
          vm_desc      = "Zabbix"
          vm_cpu       = 2 # Кол-во ядер процессора
          ram          = 2 # Оперативная память в ГБ
          disk         = 20 # Объём диска в ГБ
          disk_name    = "vda5" # Название диска
          template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
    "vm-6" = {
          vm_name      = "vm06" # Имя ВМ
          vm_desc      = "Хранение копий БД и mediawiki"
          vm_cpu       = 2 # Кол-во ядер процессора
          ram          = 2 # Оперативная память в ГБ
          disk         = 20 # Объём диска в ГБ
          disk_name    = "vda6" # Название диска
          template     = "fd80ok8sil1fn2gqbm6h" # ID образа ОС ubuntu-22-04-lts-v20241014
    },
}
