COPY vgsales2024
FROM 'D:\Video Games Sales CSV\vgchartz-2024.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY ps4sales
FROM 'D:\Video Games Sales CSV\PS4_GamesSales.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'windows-1251');

COPY vgsales
FROM 'D:\Video Games Sales CSV\vgsales.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');


SELECT * FROM vgsales2024 LIMIT 20;
SELECT * FROM ps4sales LIMIT 15;
SELECT * FROM vgsales;