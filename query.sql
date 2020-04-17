---Запрос 1
SELECT
    status,
    COUNT(*) AS amount
FROM
    collection
GROUP BY
    status
     
---Запрос 2
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
    t1.total;
    
    
---Запрос 3

SELECT
    EXTRACT(YEAR FROM collectiontime.launched) AS year,
    COUNT(*) AS amount
FROM
    collectiontime
GROUP BY
    EXTRACT(YEAR FROM collectiontime.launched)
ORDER BY
    EXTRACT(YEAR FROM collectiontime.launched);

     
     

