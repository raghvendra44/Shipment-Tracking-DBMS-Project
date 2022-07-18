import streamlit as st
import psycopg2

from fetch_all_table_names import get_column,GetTableList
from fetch_all_col_datatype import datatype

conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
c=conn.cursor()


def remove():
    st.warning("Please note: The Entry that you choose delete, once deleted cannot be recovered!")
    tables = GetTableList("public")
    Type_table = st.selectbox("Select Table", tables)
    field= get_column(Type_table)
    c.execute("select * from {table}".format(table=Type_table))
    data = c.fetchall()
    Type_entry = list(st.selectbox("Select Entry", data))
    if st.button("Delete Entry"):
        c.execute("delete from {table} where {col} = '{val}'".format(table=Type_table,col=field[0],val=Type_entry[0]))
        conn.commit()
        st.success("Successfully Entry Deleted")

