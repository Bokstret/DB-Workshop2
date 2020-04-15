---QUERY 1
SELECT
    status,
    COUNT(*) AS amount
FROM
    collection
GROUP BY
    status
     
---QUERY 2
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
    
    
---QUERY 3
SELECT
    COUNT(*) AS amount,
    EXTRACT(YEAR FROM collectiontime.launched) AS year
FROM
    collectiontime
GROUP BY
    EXTRACT(YEAR FROM collectiontime.launched);