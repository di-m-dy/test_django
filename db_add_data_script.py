# Добавление данных в базу данных из файла tester-django-add-data-db.sql
import sqlite3
import os

ROOT_DIR = os.path.abspath(os.path.dirname(__file__))
DB_PATH = os.path.join(ROOT_DIR, "tester_app", "db.sqlite3")
SCRIPT_PATH = os.path.join(ROOT_DIR, "sql_scripts", "tester-django-add-data-db.sql")

# Подключение к базе данных
conn = sqlite3.connect(DB_PATH)
cursor = conn.cursor()
# чтение скрипта из файла
with open(SCRIPT_PATH, 'r', encoding="utf-8") as f:
    sql_script = f.read()
    cursor.executescript(sql_script)
# Сохранение изменений
conn.commit()
# Закрытие соединения
conn.close()
