#!/bin/python3
import tkinter as tk
from tkinter import ttk
import customtkinter
import cx_Oracle
import os
import sys
from dotenv import load_dotenv
load_dotenv()

# Environmental variables
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")
sid = os.getenv("DB_SID")
user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
dsn=host+":"+port+"/"+sid

connection = ""

# Connect to the database
def connect_to_db(username, password, dsn):
    connection = cx_Oracle.connect(user=user, password=password, dsn=dsn)
    print("Connected to database")
    return connection

def close_connection(connection):
    print("Disconnecting from the database")
    connection.close()

def execute_query(connection, query):
    cursor = connection.cursor()
    cursor.execute(query)
    result = cursor.fetchall()
    return result

def select_col_names(table_name):
    table_name=table_name.upper()
    query=f"select COLUMN_NAME from user_tab_columns WHERE TABLE_NAME='{table_name}'"
    result = execute_query(connection, query)
    
    # Display the result in the GUI
    # print(result)
    return result

def show_records(table_name):

    # Execute a SELECT query on the specified table
    query = f"SELECT * FROM {table_name}"
    result = execute_query(connection, query)
    
    # Display the result in the GUI
    # print(result)
    return result

    #result_label.config(text=result)

def main(arg):
    table_name = arg
    global connection
    # Establish a connection to the database
    connection = connect_to_db(user, password,dsn)
    
    res_col_names=select_col_names(table_name)
    res_data=show_records(table_name)
    
    cols=[]
    for i in res_col_names:
        ccolname=""
        for j in i:
            ccolname=ccolname + j
        cols.append(ccolname)

    customtkinter.set_appearance_mode("dark")  # Modes: system (default), light, dark
    customtkinter.set_default_color_theme("blue")  # Themes: blue (default), dark-blue, green


    window = customtkinter.CTk()
    
    treeview = ttk.Treeview(window, columns=cols)



    treeview.column("#0", width=0,stretch = "no")
    treeview.pack(side="top", fill="x")
    #treeview.grid(row=0, column=0, rowspan=3, columnspan=1, sticky="nsew")
    
    for i in cols:
        treeview.heading(i, text=i)
        treeview.column(i, minwidth=0, width=100, stretch=tk.NO)
    
    # Iterate through the array of arrays
    for i, row in enumerate(res_data):
        # Insert the data into the Treeview widget
        treeview.insert("", i, text=i, values=row, tags=("odd" if i % 2 else "even",))
    
    # Configure the style of the "odd" rows
    treeview.tag_configure("odd", background="#f0f0f0")

    # Configure the style of the "even" rows
    treeview.tag_configure("even", background="#ffffff")

    window.mainloop()

    # Close the connection
    close_connection(connection)

if __name__ == "__main__":
    main(argv[1])