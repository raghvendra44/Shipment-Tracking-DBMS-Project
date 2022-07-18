import psycopg2
import psycopg2.extras

conn = psycopg2.connect(host="localhost",database="shipment2",user="postgres",password="qwerty")
cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

cur.execute("""select *
               from information_schema.columns
               where table_schema NOT IN ('information_schema', 'pg_catalog')
               order by table_schema, table_name""")

all = []
for row in cur:
    temp = [row['table_name'],row['column_name'],row['data_type']]
    all.append(temp)

def datatype(table):
    col = []
    data = []
    for i in all:
        if(i[0]==table):
            data.append(i[2])
            col.append(i[1])
    if 'detail' in col:
        index = col.index('detail')
#    print(index)
        temp = [col[index],data[index]]
        col.pop(index);data.pop(index);
        col.append(temp[0]);data.append(temp[1]);
    return col,data

#print(datatype('client'))
