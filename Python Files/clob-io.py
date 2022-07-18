#!/usr/bin/python
import psycopg2



def write_clob(client_id, name, ph_num,email_id,address):
    conn = None
    try:
       
        p1 = open("E:\Raghvendra\PES\curiculum\DBMS\minor_project\python\shipment_tracking_2\smalltext.txt", 'r').read()

        conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
    
        cur = conn.cursor()
        
        #cur.execute("CREATE TABLE STUDENT31(SID INTEGER,SNAME VARCHAR(10),AGE INTEGER,PROFILE TEXT)")
        cur.execute("INSERT INTO client " + "VALUES(%s,row(%s,%s,%s,%s),%s)",[client_id,name,ph_num,email_id,address,p1])

        cur.execute("select * from client")

        row=cur.fetchall()

        for r in row:
            print(r)

        f=open("E:\Raghvendra\PES\curiculum\DBMS\minor_project\python\shipment_tracking_2\data1.txt",'w')

        #print(row)
        for r in row:
            if(r[0]==client_id):
                f.write(r[2])
	 # commit the changes to the database
        conn.commit()
        print("data inserted sucessfully")
        # close the communication with the PostgresQL database
        cur.close()
    #except (Exception, psycopg2.DatabaseError) as error:
        #print(error)
    finally:
        if conn is not None:
            conn.close()
			
			
			
			

write_clob('30', 'shruthi', '454598464','shruthi@gmail.com','PES University')
    
