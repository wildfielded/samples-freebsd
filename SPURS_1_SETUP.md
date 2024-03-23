# &laquo;Шпоры&raquo; по практике установки системного и прикладного ПО в FreeBSD #

Может оказаться полезным для автоматизации с помощью Ansible

----

## Содержание ##

1. [Пакетный менеджер **`pkg`**](#пакетный-менеджер-pkg)    
2. [Команды установки порта](#команды-установки-порта)    
3. [Отработанный минимум установки](#пакеты-после-установки-out-of-box)    

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
- **`www/lynx`** (для &laquo;рендеринга&raquo; HTML в Midnight Commander)
- **`ftp/curl`**
- **`misc/mc`**

`[:arrow_up: Содержание](#содержание)

----
