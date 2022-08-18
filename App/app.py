import os
import psycopg2
from flask import Flask, render_template, request, url_for, redirect

#from model import y_test, y_pred, results, regression_score, mean_abs_error, mean_sq_error

from config import db_password


app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(database="N-Butane", user="postgres", password=db_password, host="127.0.0.1", port="5432")
    # will need to create a database, and make a config.py to hold the password 
    return conn

@app.route("/")
def main():
    conn = get_db_connection()
    cursor = conn.cursor()

    # queries    

    query = 'SELECT * FROM proj_results LIMIT 15'
    query1 = 'SELECT * FROM proj_results'
    query2 = 'SELECT * FROM proj_metrics'

    query3 = 'SELECT * FROM lab_rx_results'
    query4 = 'SELECT * FROM lab_rx_metrics'

    query5 = 'SELECT * FROM towers_results'
    query6 = 'SELECT * FROM towers_metrics'

    query7 = 'SELECT * FROM lab_ta_results'
    query8 = 'SELECT * FROM lab_ta_metrics'

    query9 = 'SELECT * FROM lab_tb_results'
    query10 = 'SELECT * FROM lab_tb_metrics'

    query11 = 'SELECT * FROM lab_tc_results'
    query12 = 'SELECT * FROM lab_tc_metrics'

    cursor.execute(query)
    pj_results_15 = cursor.fetchall()

    cursor.execute(query1)
    project_results = cursor.fetchall()

    cursor.execute(query2)
    project_metrics = cursor.fetchall()

    cursor.execute(query3)
    rx_results = cursor.fetchall()

    cursor.execute(query4)
    rx_metrics = cursor.fetchall()

    cursor.execute(query5)
    towers_results = cursor.fetchall()

    cursor.execute(query6)
    towers_metrics = cursor.fetchall()

    cursor.execute(query7)
    ta_results = cursor.fetchall()

    cursor.execute(query8)
    ta_metrics = cursor.fetchall()

    cursor.execute(query9)
    tb_results = cursor.fetchall()

    cursor.execute(query10)
    tb_metrics = cursor.fetchall()

    cursor.execute(query11)
    tc_results = cursor.fetchall()

    cursor.execute(query12)
    tc_metrics = cursor.fetchall()



    cursor.close()
    conn.close()
    return render_template("index.html", pj_results_15= pj_results_15, project_results=project_results, 
    project_metrics=project_metrics, rx_results=rx_results, rx_metrics=rx_metrics, 
    towers_results=towers_results, towers_metrics=towers_metrics,
    ta_results=ta_results, ta_metrics=ta_metrics, tb_results=tb_results, tb_metrics=tb_metrics,
    tc_results=tc_results, tc_metrics=tc_metrics)

if __name__ == '__main__':
    app.run(debug=True)

