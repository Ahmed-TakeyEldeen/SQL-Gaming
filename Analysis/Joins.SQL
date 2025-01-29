SELECT
    vgsales.title,
    vgsales.console,
    vgsales.genre,
    vgsales2024.critic_score,
    vgsales2024.release_date,
    vgsales2024.last_update
FROM
    vgsales
LEFT JOIN
    vgsales2024
ON
    vgsales.title = vgsales2024.title
WHERE
    vgsales2024.last_update = '2018-04-12'
;


SELECT
    vgsales.title,
    vgsales.console,
    vgsales.genre,
    vgsales2024.critic_score,
    vgsales2024.release_date,
    vgsales2024.last_update
FROM
    vgsales
LEFT JOIN
    vgsales2024
ON
    vgsales.title = vgsales2024.title
WHERE
    vgsales2024.last_update IS NULL
;

SELECT
    ps4sales.game,
    ps4sales.year,
    ps4sales.genre,
    vgsales.global_sales
FROM
    ps4sales
INNER JOIN
    vgsales
ON
    ps4sales.game = vgsales.title
;

SELECT
    game,
    year,
    genre
FROM (
    SELECT *
    FROM ps4sales
    where year = '2018'
) AS ps4sales2018;  -- Subquery


WITH ps4sales2018 AS (
    SELECT *
    FROM ps4sales
    WHERE year = '2018'
)
SELECT
    *
FROM
    ps4sales2018
; -- Common Table Expression (CTE)



CREATE Table vgsalesps4 AS(
SELECT
    *
from
    vgsales
where
    console = 'PS4'
);

WITH playstation as(
SELECT
    title,
    COUNT(*) as count_of_publisher
FROM
    vgsalesps4
GROUP BY
    title
ORDER BY
    COUNT(*) DESC
)
SELECT 
    ps4sales.publisher,
    playstation.count_of_publisher
FROM
    ps4sales
LEFT JOIN
    playstation
ON
    playstation.title = ps4sales.game
WHERE
    count_of_publisher IS NOT NULL
;