SELECT 
    *
from 
    ps4sales
WHERE
    genre = 'Action'
AND
    year = '2017'
;

SELECT 
    title,
    console,
    year,
    genre,
    publisher,
    global_sales
FROM
    vgsales
WHERE
    global_sales <10
;

SELECT
    *
FROM
    vgsales2024
WHERE
    total_sales BETWEEN 5 AND 10
;


SELECT 
    console,
    global_sales,
    year
FROM
    vgsales
GROUP BY
    console,
    global_sales,year
ORDER BY
    year
;

SELECT 
    SUM(global_sales) AS SUM
FROM 
    vgsales
GROUP BY
    global_sales
ORDER BY
    global_sales
;

SELECT
    console,
    COUNT(console)
FROM
    vgsales
GROUP BY
    console
ORDER BY
    COUNT(console) DESC
;

SELECT 
    genre,
    AVG(global_sales),
    MAX(global_sales),
    COUNT(global_sales)
FROM 
    vgsales
GROUP BY
    genre
ORDER BY
    COUNT(global_sales) DESC
;


SELECT
    title,
    release_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST'
FROM
    vgsales2024
LIMIT
    20
;


SELECT 
    EXTRACT(MONTH FROM release_date) AS MONTH,
    EXTRACT(YEAR FROM release_date) AS year
FROM 
    vgsales2024
;

SELECT
    COUNT(total_sales),
    EXTRACT(year from release_date)
FROM
    vgsales2024
GROUP BY
    EXTRACT(year from release_date)
ORDER BY
    EXTRACT(year from release_date) asc
;