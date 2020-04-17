import cx_Oracle
import chart_studio
chart_studio.tools.set_credentials_file(username='Bokstret', api_key='IBDtbzW5rbcBfDtEWR0f')
import plotly.graph_objects as go
import chart_studio.plotly as py
username = 'Boks'
password = 'BOKS'
database = 'localhost' 
connection = cx_Oracle.connect(username,password, database)
cursor = connection.cursor()

#Запрос 1
print("Запрос 1: Количество проектов c успешным либо проваленным сбором. Итог - количество проектов.\n")
names = []
Bvalues = []
query = """
SELECT
    status,
    COUNT(*) AS amount
FROM
    collection
GROUP BY
    status
"""
cursor.execute(query) 


for row in cursor.fetchall():
    names.append (row[0])
    Bvalues.append(row[1]) 
bar = go.Bar (x = names, y = Bvalues)
py.plot([bar],auto_open = True, file_name = "Plot1")

#Запрос 2
print("\nЗапрос 2: Количество проектов по странам в %.\n")
labels = []
Pvalues = []
query = """
SELECT
    project.country,
    round(COUNT(*) * 100 / t1.total, 1) AS persent
FROM
    project,
    (
        SELECT
            COUNT(*) total
        FROM
            project
    ) t1
GROUP BY
    project.country,
    t1.total
"""
cursor.execute(query)

for row in cursor.fetchall():
    labels.append (row[0])
    Pvalues.append(row[1]) 
pie = go.Pie (labels = labels, values = Pvalues)
py.plot([pie],auto_open = True, file_name = "Plot2",)

# Запрос 3
print("\nЗапрос 3: Выпуск проектов по годам.\n")
years = []
Tvalues = []
query = """
SELECT
    EXTRACT(YEAR FROM collectiontime.launched) AS year,
    COUNT(*) AS amount
FROM
    collectiontime
GROUP BY
    EXTRACT(YEAR FROM collectiontime.launched)
ORDER BY 
    EXTRACT(YEAR FROM collectiontime.launched)
"""
cursor.execute(query) 
for row in cursor.fetchall():
    years.append (row[0])
    Tvalues.append(row[1]) 
scatter = go.Scatter (x = years, y = Tvalues)
py.plot([scatter],auto_open = True, file_name = "Plot3")


cursor.close()
connection.close()