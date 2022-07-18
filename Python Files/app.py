
#streamlit run <file location>

# Importing pakages
import streamlit as st
import psycopg2

# Importing Functions
from insert import create
from view import read
from delete import remove
from update import update


def main():
    conn = psycopg2.connect(host="localhost",database="shipment",user="postgres",password="qwerty")
    c=conn.cursor()

    st.title("Track your shipment!")
    menu = ["Add", "View", "Update", "Remove","About Us"]
    choice = st.sidebar.selectbox("Functions", menu)

    #create_table()
    if choice == "Add":
        st.subheader("Add Entry")
        create()

    elif choice == "View":
        st.subheader("View Entry")
        read()


    elif choice == "Update":
        st.subheader("Update Entry")
        update()

    elif choice == "Remove":
        st.subheader("Remove Entry")
        remove()

    elif choice == "About Us":
        st.subheader("About Us")
        st.write("A Basic Model of Shipment Tracking\n\n Project by -\n\n \tRaghvendra Agrawal \tSRN: PES1UG19BT043\n\n \tAryaman Dubey \tSRN: PES1UG19EC060")
    
    else:
        st.subheader("You are not Suppose to be here! Refresh!!")

if __name__ == '__main__':
    main()

