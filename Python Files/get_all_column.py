import psycopg2

conn = psycopg2.connect(database = "shipment2", user = "postgres", password = "qwerty", host = "127.0.0.1", port = "5432")

conn.autocommit = True
cursor = conn.cursor()

def get_cloumn(table):
    sql = f'SELECT * FROM {table}'
    cursor.execute(sql)
    column_names = [desc[0] for desc in cursor.description]
    for i in column_names:
        print(i)

get_cloumn("Client")
conn.commit()
conn.close()
