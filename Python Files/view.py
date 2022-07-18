import pandas as pd
import streamlit as st
import plotly.express as px
from fetch_all_table_names import GetTableList,get_column
import psycopg2

conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
c=conn.cursor()

def read():
    tables = GetTableList("public")
    Type = st.selectbox("", tables)
    c.execute("select * from {table}".format(table=Type))
    data = c.fetchall()
    field= get_column(Type)
    if 'detail' in field:
        index = field.index('detail')
        field.pop(index)
        field.append('Name')
        field.append('Phone Number')
        field.append('Email ID')
        field.append('Address')
        new = []
        for i in data:
            i = list(i)
            temp = i[index].split(",")
            i.pop(index)
            i.append(temp[0])
            i.append(temp[1])
            i.append(temp[2])
            i.append(temp[3])
            new.append(i)
        data = new
    #data = new

    df = pd.DataFrame(data, columns=field)
    st.table(df)
