import psycopg2
from config import db_password

def get_db_connection():
    conn = psycopg2.connect(database="N-Butane", user="postgres", password=db_password, host="127.0.0.1", port="5432")
    # will need to create a database, and make a config.py to hold the password 
    return conn

conn = get_db_connection()
cursor = conn.cursor()

cursor.close()
conn.close()

## test worked, connected to database properly