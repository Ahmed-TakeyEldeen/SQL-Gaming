WITH adventuregames as(
    SELECT *
    FROM vgsales
    WHERE genre = 'Adventure'
)
SELECT *
    FROM adventuregames
UNION
SELECT *
    FROM
    vgsales
    WHERE genre = 'Action'
; -- UNION WITH CTE

SELECT 
    *
FROM (
    SELECT *
    FROM vgsales
    WHERE genre = 'Racing'
) AS racinggames
UNION
SELECT *
    FROM
    vgsales
    WHERE genre = 'Sports'
; -- UNION WITH Subquery