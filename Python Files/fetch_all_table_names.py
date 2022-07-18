import psycopg2

conn = psycopg2.connect(database = "shipment2", user = "postgres", password = "qwerty", host = "127.0.0.1", port = "5432")
cur = conn.cursor()

#list_tables = cur.fetchall()

#print(list_tables)
def GetTableList(t_schema):
    # Retrieve the table list
    s = ""
    s += "SELECT"
    s += " table_schema"
    s += ", table_name"
    s += " FROM information_schema.tables"
    s += " WHERE"
    s += " ("
    s += " table_schema = '" + t_schema + "'"
    s += " )"
    s += " ORDER BY table_schema, table_name;"

    # Retrieve all the rows from the cursor
    cur.execute(s)
    list_tables = cur.fetchall()
    all_table = []
    # Print the names of the tables
    for t_name_table in list_tables:
        all_table.append(t_name_table[1])


    return all_table

def get_column(table):

    sql = f'SELECT * FROM {table}'
    cur.execute(sql)
    column_names = [desc[0] for desc in cur.description]
    return column_names
    #for i in column_names:
    #    print(i)
