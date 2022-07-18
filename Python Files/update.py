import pandas as pd
import streamlit as st
from fetch_all_table_names import get_column,GetTableList
from fetch_all_col_datatype import datatype
import psycopg2

conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
c=conn.cursor()

def update():
    st.info("Please note: Enter all the values in  fields and change only those which you wish to update")
    tables = GetTableList("public")
    Type_table = st.selectbox("Select Table", tables)
    field= get_column(Type_table)
    c.execute("select * from {table}".format(table=Type_table))
    data = c.fetchall()
    Type_entry = list(st.selectbox("Select Entry", data))

    if 'detail' in field:
        index = field.index('detail');temp = (Type_entry[index]).split(",")
        field.pop(index);Type_entry.pop(index)
        field.append('Name');Type_entry.append(temp[0])
        field.append('Phone Number');Type_entry.append(temp[1])
        field.append('Email ID');Type_entry.append(temp[2])
        field.append('Address');Type_entry.append(temp[3])
    
    col1, col2 = st.columns(2)
    with col1:
        temp = ""
        for i in range(len(Type_entry)):
            if i==0:
                temp = f'''{field[i]} : {Type_entry[i]}\n\n'''
            else:
                temp += f'''{field[i]} : {Type_entry[i]}\n\n'''
        st.write(temp)

    with col2:
        columns = []

        for i in range(len(field)):
            columns.append(st.text_input(field[i]))

        if st.button("Update Entry"):
            if 'Address' in field:
                temp = columns[len(columns)-4]+','+columns[len(columns)-3]+','+columns[len(columns)-2]+','+columns[len(columns)-1]
                for i in range(0,4):
                    columns.pop(len(columns)-1);
                temp = temp.split(",")

            c.execute("delete from {table} where {col} = '{val}'".format(table=Type_table,col=field[0],val=columns[0]))
            conn.commit()

            temp2=""
            for i in range(len(columns)):
                if(i==0):
                    temp2 = columns[i]
                else:
                    temp2 = temp2 + ',' + columns[i]

            if 'Address' in field:
                c.execute("ROLLBACK")
                c.execute("insert into {table} values (%s,row(%s,%s,%s,%s))".format(table=Type_table),[temp2,temp[0],temp[1],temp[2],temp[3]])
            else:
                c.execute("ROLLBACK")
                c.execute("insert into {table} values (%s)".format(table=tables[but_sel]),[temp2])

            conn.commit()
            print ("Records created successfully")
            st.success("Successfully added task: {}".format(temp[0]))
            

