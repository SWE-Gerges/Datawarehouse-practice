USE movieShop;
INSERT INTO movieShop.actor(actor_name)
VALUES("Gerges");
INSERT INTO movieShop.actor(actor_name)
VALUES("Mark");
INSERT INTO movieShop.actor(actor_name)
VALUES("Tadros");
INSERT INTO movieShop.actor(actor_name)
VALUES("Kero");
INSERT INTO movieShop.actor(actor_name)
VALUES("Jessi");
INSERT INTO movieShop.actor(actor_name)
VALUES("Maria");
INSERT INTO movieShop.actor(actor_name)
VALUES("Dummy1");

-- insterting into producers --
INSERT INTO movieShop.producer(producer_name)
VALUES("prod1");
INSERT INTO movieShop.producer(producer_name)
VALUES("prod2");
INSERT INTO movieShop.producer(producer_name)
VALUES("prod3");

-- inserting into category --
INSERT INTO movieShop.category(category_name)
VALUES("Action");
INSERT INTO movieShop.category(category_name)
VALUES("Drama");
INSERT INTO movieShop.category(category_name)
VALUES("Comedy");
INSERT INTO movieShop.category(category_name)
VALUES("Horror");

-- insertin into customer --
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust1");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust2");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust3");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust4");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust5");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust6");
INSERT INTO movieShop.customer(customer_name)
VALUES("dummyCust7");

-- insertin into movie -- 

INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie1", 10, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie2", 12, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie3", 13, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie4", 21, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie5", 10, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie6", 13, "description");
INSERT INTO movieShop.movie(movie_name, price, movie_desc)
VALUES("movie7", 17, "description");

-- insert into customer_movie_order--
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(2, 1, '2020-10-11', 2);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(3, 1, '2020-10-10', 4);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(2, 2, '2020-10-11', 1);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(2, 1, '2022-09-11', 1);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(1, 4, '2021-2-11', 3);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(1, 5, '2020-10-9', 1);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(4, 3, '2020-10-8', 2);
INSERT INTO movieShop.customer_movie_order(movie_id, customer_id, bill_date, quantity)
VALUES(3, 3, '2020-10-7', 2);










