import cx_Oracle
username = 'Boks'
password = 'BOKS'
database = 'localhost' 
connection = cx_Oracle.connect(username,password, database)
cursor = connection.cursor()
#Запрос 1
print("Запрос 1: Количество проектов c успешным либо проваленным сбором. Итог - количество проектов.\n")
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

for row in cursor:
    print(row)
    


#Запрос 2
print("\nЗапрос 2: Количество проектов по странам в %.\n")
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

for row in cursor:
    print (row) 


# Запрос 3
print("\nЗапрос 3: Выпуск проектов по годам.\n")
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

for row in cursor:
    print (row) 
cursor.close()
connection.close()
