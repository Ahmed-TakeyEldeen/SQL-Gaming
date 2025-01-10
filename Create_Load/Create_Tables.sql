CREATE TABLE public.vgsales2024
(
    title TEXT,
    console TEXT,
    genre TEXT,
    puplisher TEXT,
    developer TEXT,
    critic_score NUMERIC(10,2),
    total_sales NUMERIC(10,2),
    na_sales NUMERIC(10,2),
    jp_sales NUMERIC(10,2),
    pal_sales NUMERIC(10,2),
    other_sales NUMERIC(10,2),
    release_date DATE,
    last_update DATE
);

SELECT *
FROM vgsales2024;


CREATE TABLE public.ps4sales
(
    game TEXT,
    year VARCHAR(255),
    genre TEXT,
    publisher TEXT,
    north_america NUMERIC(10,2),
    europe NUMERIC(10,2),
    japan NUMERIC(10,2),
    rest_of_world NUMERIC(10,2),
    global NUMERIC(10,2)
);

SELECT *
FROM ps4sales;


CREATE TABLE public.vgsales
(
    rank INT PRIMARY KEY,
    title TEXT,
    console TEXT,
    year VARCHAR(255),
    genre TEXT,
    publisher TEXT,
    na_sales NUMERIC(10,2),
    eu_sales NUMERIC(10,2),
    jp_sales NUMERIC(10,2),
    other_sales NUMERIC(10,2),
    global_sales NUMERIC(10,2)
);

SELECT *
FROM vgsales;

ALTER TABLE public.vgsales2024 OWNER to postgres;
ALTER TABLE public.ps4sales OWNER to postgres;
ALTER TABLE public.vgsales OWNER to postgres;