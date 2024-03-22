# &laquo;Шпоры&raquo; по практике установки системного и прикладного ПО в FreeBSD #

Может оказаться полезным для автоматизации с помощью Ansible

----

## Содержание ##

1. [Пакетный менеджер **`pkg`**](#пакетный-менеджер-pkg)    
2. [Команды установки порта](#команды-установки-порта)    
3. []()    

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

[:arrow_up: Содержание](#содержание)

----

## Out-of-Box-пакеты ##

Что полезно установить как рабочий минимум
```bash
```

[:arrow_up: Содержание](#содержание)

----
