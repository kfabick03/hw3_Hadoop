USE bookcrossing;

CREATE TABLE books_partitioned
	(isbn INT, title STRING, author STRING, publisher STRING,
	image_s STRING, image_m STRING, image_l STRING)
PARTITIONED BY (year INT)
ROW FORMAT DELIMITED
STORED AS TEXTFILE;

INSERT INTO TABLE books_partitioned
partition(year)
SELECT isbn, title, author, publisher,
	image_s, image_m, image_l, year
FROM books;
