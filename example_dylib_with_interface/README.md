# Описание
Данный пример иллюстрирует подключение динамической библиотеки с публичным интерфейсом, вынесенным в отдельный модуль. Это позволяет работать с более богатыми динамическими API по сравнению с обычными функциями.

# Сборка
Запускаем `swift build` из корневого каталога.

# Запуск
С помощью `swift build --show-bin-path` определяем расположение артефактов, после чего из данного каталога запускаем `HostApp`:
```
./HostApp
Result: DylibDTO(str: "Llorem Ipsum", int: 42)
```
