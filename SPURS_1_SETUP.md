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
рабочего ядра в `/usr/src/sys/amd64/conf/BASTION`.

3. :arrow_right: Очистка от файлов предыдущих сборок:

    ```sh
        rm -rvdf /usr/obj/*
    ```

4. :arrow_right: Сборка мира:

    ```sh
        cd /usr/src
        make -j 4 buildworld
    ```
5. :arrow_right: Сборка и установка дефолтного и рабочего ядер

    ```sh
        cd /usr/src
        nake buildkernel KERNCONF=GENERIC
        make installkernel KERNCONF=GENERIC
        cp -rvp /boot/kernel/* /boot/kernel.GENERIC/
        make buildkernel KERNCONF=BASTION
        make installkernel KERNCONF=BASTION
    ```

6. :arrow_right: В случае появления новых системных пользователей и групп:

    ```sh
        mergemaster -p
    ```

7. :arrow_right: Установка собранной системы:

    ```sh
        cd /usr/src
        make installworld
    ```

8. :arrow_right: Для любителей хардкора&nbsp;&mdash; генерация новых дефолтных системных
конфигурационных файлов и вдумчивый ручной "merging":

    ```sh
        cd /usr/src/etc
        make DESTDIR=/var/tmp/root distrib-dirs distribution
    ```

    Либо для ленивых просто:

    ```sh
        mergemaster -iF
    ```

    Ещё большой вопрос&nbsp;&mdash; что менее трудозатратно.

9. :arrow_right: Удаление ненужных старых файлов и перезагрузка системы:

    ```sh
        cd /usr/src
        make delete-old
        shutdown -r now
    ```

10. :arrow_right: Удаление ненужных старых библиотек:

    ```sh
        cd /usr/src
        make delete-old-libs
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

Предварительно в начале славных дел:

```shell
    cd /usr/ports
    make index
    # Если не сработает
    make fetchindex
```

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
