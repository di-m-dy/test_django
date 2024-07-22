# Инструкция по скриптам для DB

1. Запустите миграцию

   ```bash
   cd tester_app
   python manage.py migrate

   ```
2. Вернитесь в корень,  запустите скрипт для заполнения данных пользователей

   ```bash
   python db_add_data_auth_user_script.py
   ```
3. Запустите скрипт для заполнения остальных данных таблицы

   ```bash
   python db_add_data_sript.py
   ```
4. Для тестов в дериктории sql_scripts находятся скрипты для создания таблиц (если нужно для тестов - отдельно от приложения)



## Логины и пароли для тестовых аккаунтов

1. username: `johnlennon`

   password: `1234len4321`

2. username: `michaeljordan`

   password: `1234jor4321`

3. username: `alexdower`

   password: `1234dow4321`
