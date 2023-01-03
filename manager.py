#!/bin/python3
import tkinter as tk
from tkinter import ttk
import customtkinter
import cx_Oracle
import os
import re
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
treeview = ""
input_field = ""
focused_row = ""
colnr=0
window=""
table_name=""
cols=""

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

def execute_delete(connection, query):
    try:
        with connection.cursor() as cursor:
                # execute the insert statement
                cursor.execute(query)
                # commit the change
                connection.commit()
    except cx_Oracle.Error as error:
        print(error)

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


def createBtn():
    print("Creating row...")
    rawquery=focused_row["values"]
    curr_id=rawquery[0]
    print(curr_id)
    create_window = customtkinter.CTk()
    textboxes = []
    input_fields = []
    it = 0
    for colname in cols:
        textboxes.append(customtkinter.CTkTextbox(create_window))
        textboxes[it].grid(row=it, column=0)
        textboxes[it].insert("0.0", colname+":")
        textboxes[it].configure(state="disabled")
        input_fields.append(customtkinter.CTkEntry(master=window, placeholder_text="Type here...", width=320))
        input_fields[it].pack(side="top", padx=5, pady=5)
        it = it + 1
    
    create_window.mainloop()

    window.destroy()
    main(table_name)

def updateBtn():
    print("Updating row...")
    rawquery=focused_row["values"]
    curr_id=rawquery[0]
    print()

def deleteBtn():
    rawquery=focused_row["values"]
    curr_id=rawquery[0]
    currTable1ColName=cols[0]
    local_table_name = table_name.upper()
    
    print(f"Deleting row with id:{curr_id} at {currTable1ColName} from {local_table_name} ")
    query=f"DELETE FROM {local_table_name} WHERE {currTable1ColName} = {curr_id}"
    execute_delete(connection,query)
    print("Deletion complete!")
    
    window.destroy()
    main(local_table_name)

def on_select(event):
    global focused_row

    # Get the selected item
    item = treeview.focus()

    focused_row = treeview.item(item)

    # Get the data from the selected item
    data = treeview.item(item)["values"]

    # Set the data as the value of the input field
    input_field.delete(0, "end")
    input_field.insert(0, data)

def main(arg):
    global table_name
    print("Main window started!")
    table_name = arg
    global connection
    global treeview
    global input_field
    global colnr
    global window
    global cols

    # Establish a connection to the database
    connection = connect_to_db(user, password,dsn)
    
    res_col_names=select_col_names(table_name)
    res_data=show_records(table_name)
    
    cols=[]
    colnr = 0
    for i in res_col_names:
        ccolname=""
        for j in i:
            ccolname=ccolname + j
        cols.append(ccolname)
        colnr = colnr + 1

    customtkinter.set_appearance_mode("dark")  # Modes: system (default), light, dark
    customtkinter.set_default_color_theme("blue")  # Themes: blue (default), dark-blue, green


    window = customtkinter.CTk()
    
    treeview = ttk.Treeview(window, columns=cols)

    treeview.column("#0", width=0,stretch = "no")
    treeview.columnconfigure(0, weight=1)

    treeview.bind("<<TreeviewSelect>>", on_select)

    treeview.pack(side="top", fill="both", expand=True, padx=5, pady=5)
    
    for i in cols:
        treeview.heading(i, text=i)
        treeview.column(i, minwidth=0, width=100, )
    
    # Iterate through the array of arrays
    for i, row in enumerate(res_data):
        # Insert the data into the Treeview widget
        treeview.insert("", i, text=i, values=row, tags=("odd" if i % 2 else "even",))
    
    # Configure the style of the "odd" rows
    treeview.tag_configure("odd", background="#f0f0f0")

    # Configure the style of the "even" rows
    treeview.tag_configure("even", background="#ffffff")


    # Create an input field
    input_field = customtkinter.CTkEntry(master=window, placeholder_text="Type here...", width=420)

    # Pack the input field
    input_field.pack(side="top", padx=5, pady=5)

    # Create three buttons
    button1 = customtkinter.CTkButton(master=window, text="Create", command=createBtn)
    button2 = customtkinter.CTkButton(master=window, text="Update", command=updateBtn)
    button3 = customtkinter.CTkButton(master=window, text="Delete", command=deleteBtn)

    # Pack the buttons
    button1.pack(side="top", padx=5, pady=5)
    button2.pack(side="top", padx=5, pady=5)
    button3.pack(side="top", padx=5, pady=5)

    window.mainloop()

    # Close the connection
    close_connection(connection)

if __name__ == "__main__":
    main(argv[1])