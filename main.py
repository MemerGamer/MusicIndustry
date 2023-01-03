#!/bin/python3
import tkinter
from tkinter import *
import customtkinter
import manager
from manager import *

def button_click_event():

    dialog = customtkinter.CTkInputDialog(text="Type in a table name:", title="Table name")
    table_name = dialog.get_input()
    table_name = table_name.lower()
    table_name = table_name.replace(" ","")

    # manager.main(table_name)
    
    try:
        manager.main(table_name)
    except:
        print("Invalid query")
        tkinter.messagebox.showerror("showerror", "Invalid table name!")
    

if __name__ == "__main__":
    # create root window
    customtkinter.set_appearance_mode("dark")  # Modes: system (default), light, dark
    customtkinter.set_default_color_theme("blue")  # Themes: blue (default), dark-blue, green
    root = customtkinter.CTk()
    root.geometry("300x400")
    #root.config(bg="#282828")
    button = customtkinter.CTkButton(root, text="View Table", command=button_click_event)
    button.place(relx=0.5, rely=0.5, anchor=tkinter.CENTER)
    root.mainloop()
