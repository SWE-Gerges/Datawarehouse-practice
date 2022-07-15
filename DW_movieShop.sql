CREATE DATABASE IF NOT EXISTS movie_DW;
USE movie_DW;
CREATE TABLE IF NOT EXISTS orderDim AS 
SELECT customer_movie_order.bill_id, customer_movie_order.quantity
FROM movieShop.customer_movie_order INNER JOIN movieShop.movie
ON movieShop.customer_movie_order.movie_id = movieShop.movie.movie_id;

ALTER TABLE orderDim
ADD PRIMARY KEY(bill_id);


CREATE TABLE IF NOT EXISTS movieDim AS
SELECT movie.movie_id, movie.movie_name, movie.price
FROM movieShop.movie;

ALTER TABLE movieDim
ADD PRIMARY KEY(movie_id);


CREATE TABLE IF NOT EXISTS timeDim AS(
SELECT DISTINCT DAY(bill_date)AS orderDay, MONTH(bill_date) AS orderMonth, YEAR(bill_date) AS orderYear, bill_date
FROM movieShop.customer_movie_order
);

ALTER TABLE timeDim
ADD PRIMARY KEY(bill_date);

CREATE TABLE IF NOT EXISTS customerDim AS
SELECT customer.customer_id, customer.customer_name
FROM movieShop.customer;

ALTER TABLE customerDim
ADD PRIMARY KEY(customer_id);

CREATE TABLE IF NOT EXISTS salesFact AS
SELECT customerDim.customer_id, movieDim.movie_id, orderDim.bill_id,
timeDim.bill_date, SUM(orderDim.quantity) AS Quantity, SUM(movieDim.price * Quantity)
FROM movie_DW.customerDim, movie_DW.movieDim, movie_DW.orderDim, movie_DW.timeDim
GROUP BY orderDim.bill_id, customerDim.customer_id, movieDim.movie_id, timeDim.bill_date;


ALTER TABLE salesFact
ADD FOREIGN KEY(bill_id) REFERENCES movie_DW.orderDim(bill_id),
ADD FOREIGN KEY(customer_id) REFERENCES customerDim(customer_id),
ADD FOREIGN KEY(movie_id) REFERENCES movieDim(movie_id),
ADD FOREIGN KEY(bill_date) REFERENCES timeDim(bill_date);



