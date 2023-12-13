# Build
Инициализируйте базу данных. База должна называться kinoteka. Если название другое, надо поменять в [application.properties](src%2Fmain%2Fresources%2Fapplication.properties) параметр spring.datasource.url
Скрипты для создания и инициализации базы данных лежат в kinoteka/sqlScripts/

Собираем jar:

```
.\gradlew bootJar
```
Запускаем jar:
```
java -jar .\build\libs\kinoteka-0.0.1-SNAPSHOT.jar
```
И проект запустился локально на http://localhost:8080/

# Суть проекта
Сайт, на котором можно искать фильмы и сериалы и просматривать платформы, где их можно посмотреть. Также есть странички режиссеров и актеров.
