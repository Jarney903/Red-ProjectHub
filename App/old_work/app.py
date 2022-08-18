import os
import psycopg2
from flask import Flask, render_template, request, url_for, redirect

#from config.py import db_password

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(database="", user="postgres", password="", host="127.0.0.1", port="5432")
    # will need to create a database, and make a config.py to hold the password 
    return conn

# set up database connection route (main route)
@app.route("/")
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("select * from dataset")
    result = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template("index.html", data=result)


#@app.route("/predict")
    # app route for running extracted data in the Machine Learning Model


if __name__ == '__main__':
    app.run()