use movieShop;
CREATE TABLE IF NOT EXISTS customer(
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(25) NOT NULL,
  email VARCHAR(25),
  address varchar (50)
);

CREATE TABLE IF NOT EXISTS movie(
  movie_id INT AUTO_INCREMENT,
  PRIMARY KEY(movie_id),
  movie_name VARCHAR(25) NOT NULL,
  movie_desc VARCHAR(50) NOT NULL,
  price DECIMAL NOT NULL
);

CREATE TABLE IF NOT EXISTS actor(
  actor_id INT AUTO_INCREMENT PRIMARY KEY,
  actor_name VARCHAR(25) NOT NULL
  
  );
  
CREATE TABLE IF NOT EXISTS producer(
  producer_id INT AUTO_INCREMENT PRIMARY KEY,
  producer_name VARCHAR(25) NOT NULL
  
);

CREATE TABLE IF NOT EXISTS category(
  category_id INT AUTO_INCREMENT,
  PRIMARY KEY(category_id),
  category_name VARCHAR(25) NOT NULL,
  cateogry_disc VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS movie_category(
  movie_id INT ,
  category_id INT,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  PRIMARY KEY (movie_id, category_id),
  cat_description VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS movie_actor(
  movie_id INT ,
  actor_id INT,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
  PRIMARY KEY (movie_id, actor_id),
  participation_date DATE

);

CREATE TABLE IF NOT EXISTS movie_producer(
  movie_id INT ,
  producer_id INT,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (producer_id) REFERENCES producer(producer_id),
  PRIMARY KEY (movie_id, producer_id),
  production_date DATE
  

);

CREATE TABLE IF NOT EXISTS customer_movie_order(
  bill_id INT AUTO_INCREMENT PRIMARY KEY,
  movie_id INT ,
  customer_id INT,
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  bill_date DATE,
  quantity INT,
  total_price DECIMAL
);



  

