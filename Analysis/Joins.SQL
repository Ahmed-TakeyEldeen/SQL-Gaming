SELECT
    *
FROM
    vgsales
LIMIT
    10
;


SELECT
    *
FROM
    ps4sales
LIMIT
    10
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