import streamlit as st
import fetch_all_table_names
from fetch_all_col_datatype import datatype
import psycopg2

conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
c=conn.cursor()

def create():
    temp = ""
    tables = fetch_all_table_names.GetTableList("public")
    index = tables.index('order_detail')
    tables.pop(index)
    buttons = []
    col1, col2 = st.columns(2)
    with col1:
        st.markdown('**Select Table**')

        for i in tables:
            buttons.append(st.button(i))
        
        but_sel = 0
        for i, button in enumerate(buttons):
            if button:
                but_sel = i

        fields,data = datatype(tables[but_sel])
        field = fields
        if 'invoice' in field:
            index = field.index('invoice')
            field.pop(index)

    with col2:
        st.markdown('**Enter into respective Fields**')

        if 'detail' in field:
            field.pop(len(field)-1);data.pop(len(data)-1);
            field.append('Name');data.append('character varing');
            field.append('Phone Number');data.append('character varing');
            field.append('Email ID');data.append('character varing');
            field.append('Address');data.append('character varing');

        columns = []

        for i in range(len(field)):
            columns.append(st.text_input(field[i],help=data[i]))

        if st.button("Insert Entry"):
            if 'Address' in field:
                temp = columns[len(columns)-4]+','+columns[len(columns)-3]+','+columns[len(columns)-2]+','+columns[len(columns)-1]
                for i in range(0,4):
                    columns.pop(len(columns)-1);
                temp = temp.split(",")

                #print(temp)

            temp2=""
            for i in range(len(columns)):
                if(i==0):
                    temp2 = columns[i]
                else:
                    temp2 = temp2 + ',' + columns[i]

            if 'Address' in field:
                c.execute("ROLLBACK")
                c.execute("insert into {table} values (%s,row(%s,%s,%s,%s))".format(table=tables[but_sel]),[temp2,temp[0],temp[1],temp[2],temp[3]])

            elif 'Address' in field and 'invoice' in fields:
                c.execute("insert into {table} values (%s,row(%s,%s,%s,%s),'No Invoice added')".format(table=tables[but_sel]),[temp2,temp[0],temp[1],temp[2],temp[3]])

            else:
                c.execute("ROLLBACK")
                c.execute("insert into {table} values (%s)".format(table=tables[but_sel]),[temp2])


            conn.commit()
            st.success("Successfully added record: {}".format(temp[0]))
            st.balloons()
            print ("Records created successfully")
