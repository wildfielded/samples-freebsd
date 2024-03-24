# &laquo;Шпоры&raquo; по практике установки системного и прикладного ПО в FreeBSD #

Может оказаться полезным для автоматизации с помощью Ansible

----

## Содержание ##

1. [Сотворение мира](#сборка-системы)    
1. [Пакетный менеджер **`pkg`**](#пакетный-менеджер-pkg)    
2. [Команды установки порта](#команды-установки-порта)    
3. [Отработанный минимум установки](#пакеты-после-установки-out-of-box)    

----

## Сборка системы ##

Проводится при обновлении системы, а также после установки системы Out-of-Box,
если требуются особые условия, заданные в `/etc/make.conf`, `/etc/src.conf`,
`/etc/src-env.conf`.

1. :arrow_right: Размещение исходников в `/usr/src`. Раньше можно было взять
через `subversion`, например:

    ```sh
        svn checkout https://svn.freebsd.org/base/release/12.2.0 /var/tmp/src
    ```

2. :arrow_right: Анализ `/usr/src/UPDATING`, внесение требуемых параметров в
`/etc/make.conf`, `/etc/src.conf`, `/etc/src-env.conf`. Подготовка конфигурации
рабочего ядра в `/usr/src/sys/amd64/conf/SERVER`.

3. :arrow_right: Очистка от файлов предыдущих сборок:

    ```sh
        rm -rvdf /usr/obj/*
    ```

4. :arrow_right: Сборка мира:

    ```sh
        cd /usr/src
        make buildworld
    ```

----

## Пакетный менеджер **`pkg`** ##

Изначально `pkd` как бы &laquo;не совсем установлен&raquo;. При этом он
потребуется при первой же установке любого порта. Достаточно дать любую команду
с участием `pkg`, хотя бы:

```shell
    pkg info
```

и при наличии выхода в сеть он установится.

[:arrow_up: Содержание](#содержание)

----

## Команды установки порта ##

На основании информации из `/usr/ports/Mk/bsd.port.mk` последовательность команд
при установке любого порта (многие из них можно пропустить):

```shell
    make config
    make config-recursive
    make all-depends-list
    make fetch-list
    make fetch
    make fetch-recursive-list
    make fetch-recursive
    make checksum
    make checksum-recursive
    make extract
    make patch
    make configure
    make build
    make
    make install
    make clean
    make clean-depends
```

Ещё некоторые можно применять при переустановке/обновлении:

```shell
    make showconfig
    make showconfig-recursive
    make reinstall
    make deinstall
```

[:arrow_up: Содержание](#содержание)

----

## Пакеты после установки Out-of-Box ##

Что полезно установить как рабочий минимум из **`/usr/ports/`**

- **`ports-mgmt/dialog4ports`**
- **`lang/perl5.34`** (версия меняется в зависимости от релиза)
- **`shells/bash`**
- **`lang/python3.9`** (версия меняется в зависимости от релиза)
- **`databases/py-gdbm`** (для полноты установки Python Standard Library)
- **`databases/py-sqlite3`** (для полноты установки Python Standard Library)
- **`x11-toolkits/py-tkinter`** (для полноты установки Python Standard Library)
- **`devel/py-pip`** (для полноты установки Python)
- **`www/lynx`** (для &laquo;рендеринга&raquo; HTML в Midnight Commander)
- **`ftp/curl`**
- **`misc/mc`**
- **`x11/luit`** (для работы по SSH с разными локалями)

`[:arrow_up: Содержание](#содержание)

----
