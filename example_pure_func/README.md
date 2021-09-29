# Описание
Данный пример иллюстрирует подключение динамической библиотеки с публичным интерфейсом из простых функций.

# Сборка
Запускаем `swift build` из корневого каталога.

# Запуск
С помощью `swift build --show-bin-path` определяем расположение артефактов, после чего из данного каталога запускаем `HostApp`:
```
./HostApp
Performing task with name: ExampleTask, options: ["exampleKey": "exampleValue"]
Result: true
```
