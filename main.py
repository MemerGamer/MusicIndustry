#!/bin/python3
import tkinter
from tkinter import *
import customtkinter
import pandas as pd
import cx_Oracle
from sqlalchemy.engine import create_engine
import os
from dotenv import load_dotenv
load_dotenv()

# global variables
total_rows = 0
total_columns = 0

# make connection
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")
sid = os.getenv("DB_SID")
user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
sid = cx_Oracle.makedsn(host, port, sid=sid)
cstr = 'oracle://{user}:{password}@{sid}'.format(
    user=user,
    password=password,
    sid=sid)

engine = create_engine(
    cstr,
    convert_unicode=False,
    pool_recycle=10,
    pool_size=50,
    echo=True)

def executeQuery(query):
    #test_df = pd.read_sql_query(query, engine)
    #print(test_df)

    result = engine.execute(query)

    # processing the data
    res = []
    for row in result:
        newRow = []
        for element in row:
            if(element != None):
                newRow.append(element)
            else:
                newRow.append('null');
            #print(element)
        
        res.append(newRow)
    return res

class Table:
    def __init__(self, root,lst):
        # find total number of rows and
        # columns in list
        total_rows = len(lst)
        total_columns = len(lst[0])

        # code for creating table
        for i in range(total_rows):
            for j in range(total_columns):
                self.e = Entry(root, width=20, fg='#b3b3b3', bg='#3a3b3c',
                               font=('Arial', 16, 'bold'))

                self.e.grid(row=i, column=j)
                self.e.insert(END, lst[i][j])



def button_click_event():
    #global root
    global total_rows
    global total_columns

    dialog = customtkinter.CTkInputDialog(text="Type in a table name:", title="Table name")
    table_name = dialog.get_input()

    table_name = table_name.lower()
    table_name = table_name.replace(" ","")
    
    #create connection
    query = 'SELECT * FROM ' + table_name
    
    # take the data
    invalidFlag = False
    try:
        lst = executeQuery(query)
        print(lst)
    except:
        invalidFlag = True
        print("Invalid query")
        tkinter.messagebox.showerror("showerror", "Invalid table name!")
    
    if not invalidFlag:
        w1 = customtkinter.CTk()
        w1.geometry("1000x300")
        t = Table(w1, lst)

if __name__ == "__main__":
    # create root window
    customtkinter.set_appearance_mode("dark")  # Modes: system (default), light, dark
    customtkinter.set_default_color_theme("blue")  # Themes: blue (default), dark-blue, green
    root = customtkinter.CTk()
    root.geometry("300x400")
    #root.config(bg="#282828")
    button = customtkinter.CTkButton(root, text="Open Dialog", command=button_click_event)
    button.place(relx=0.5, rely=0.5, anchor=tkinter.CENTER)
    root.mainloop()
