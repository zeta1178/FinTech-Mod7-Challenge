DROP TABLE IF EXISTS card_holder CASCADE;
DROP TABLE IF EXISTS credit_card CASCADE;
DROP TABLE IF EXISTS merchant_category CASCADE;
DROP TABLE IF EXISTS merchant CASCADE;
DROP TABLE IF EXISTS transaction_tbl CASCADE;

-- Create card_holder table
CREATE TABLE card_holder (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(100)
);

-- Create credit_card table
CREATE TABLE credit_card (
  card VARCHAR(20) NOT NULL PRIMARY KEY,
  cardholder_id INT NOT NULL ,
  FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

-- Create merchant_category table
CREATE TABLE merchant_category (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(20)
);


-- Create merchant table
CREATE TABLE merchant (
  id INT NOT NULL PRIMARY KEY,
  mrcht_name VARCHAR(100),
  id_merchant_category INT NOT NULL,
  FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)  
);



-- Create transaction table
CREATE TABLE transaction_tbl (
  id INT PRIMARY KEY NOT NULL,
  trns_date TIMESTAMP,
  amount MONEY,
  card VARCHAR(20),
  FOREIGN KEY (card) REFERENCES credit_card(card),
  id_merchant INT,
  FOREIGN KEY (id_merchant) REFERENCES merchant(id) 
);