from tkinter import *
import pandas as pd
import cx_Oracle
from sqlalchemy.engine import create_engine
import os
from dotenv import load_dotenv
load_dotenv()

def makeConnection():
    host = os.getenv("DB_HOST")
    port = os.getenv("DB_PORT")
    sid = os.getenv("DB_SID")
    user = os.getenv("DB_USER")
    password = os.getenv("DB_PASSWORD")
    sid = cx_Oracle.makedsn(host, port, sid=sid)

    cstr = 'oracle://{user}:{password}@{sid}'.format(
        user=user,
        password=password,
        sid=sid
    )

    engine = create_engine(
        cstr,
        convert_unicode=False,
        pool_recycle=10,
        pool_size=50,
        echo=True
    )

    # test_df = pd.read_sql_query('SELECT * FROM global_name', engine)
    # print(test_df)
    # result = engine.execute('select * from global_name')

    # for row in result:
    #     print
    #     row



def getData():
    lst = [(1, 'Raj', 'Mumbai', 19),
           (2, 'Aaryan', 'Pune', 18),
           (3, 'Vaishnavi', 'Mumbai', 20),
           (4, 'Rachna', 'Mumbai', 21),
           (5, 'Shubham', 'Delhi', 21)]

    return lst

class Table:
    def __init__(self, root):
        # code for creating table
        for i in range(total_rows):
            for j in range(total_columns):
                self.e = Entry(root, width=20, fg='#b3b3b3', bg='#3a3b3c',
                               font=('Arial', 16, 'bold'))

                self.e.grid(row=i, column=j)
                self.e.insert(END, lst[i][j])




if __name__ == "__main__":
    #create connection
    makeConnection()

    # take the data
    #lst = getData()

    # find total number of rows and
    # columns in list
    total_rows = len(lst)
    total_columns = len(lst[0])

    # create root window
    root = Tk()
    root.geometry("300x400")
    root.config(bg="#282828")
    t = Table(root)
    root.mainloop()
