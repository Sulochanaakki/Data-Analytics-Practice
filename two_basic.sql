-- TABLE  WITH PRIMARY KEY,DEFAULT,NOT NULL
-- I want to store customer name,email and amount they spent.
 SHOW DATABASES;

 USE photo_store;
 SHOW TABLES;


-- TODO: Create cumstomers table.
 CREATE TABLE customers (
   id INT NOT NULL AUTO_INCREMENT,
   first_name VARCHAR(50) NOT NULL,
   email VARCHAR(50) NOT NULL DEFAULT 'No email',
   amount INT NOT NULL,
   PRIMARY KEY (id)
);


-- TODO: Insert customers data
 INSERT INTO customers(first_name,email,amount)
 VALUES("suchi",
       "suchi@gamil.com",
       30),
       ("Geroge","geo@gamil.com",35),
       ("Hitesh","hitesh@gmail.com",56),
       ("Jimmy","jimmy@yahoo.com",78),
       ("Lina","lina@yahoo.com",88),
       ("Maya","maya@lco.com",35),
       ("Joy","joy@loc.com",57),
       ("Ram","ram@gamil.com",s67);

 INSERT INTO customers(email,first_name,amount)
  VALUES("joy@gmai.com",
       "joy",
       45)



-- TODO Answer some questions
-- 1.Can you give me names of all customers?
 SELECT first_name from customers;

-- 2. Can you give me emails of all customers?
 SELECT email from customers;

-- 3. Can you give me all purchases of all customers?
 SELECT amount from customers;
 SELECT amount as Purchases from customers;

-- TODO Update tasks
-- 1. Jimmy's email was entered incorrectly,edit it to jimmy1@yahoo.com
 SELECT * FROM customers WHERE first_name="Jimmy"

 UPDATE customers SET email='jimmy1@yamoo.com' WHERE first_name="jimmy";

-- 2. Maya's purchase was not of 88 but it was of38
 SELECT * FROM customers WHERE first_name="lina";
 SELECT * FROM customers WHERE id=6;
 UPDATE customers SET amount=38 WHERE id=6;

-- 3. Change email of lina to lina@gmail.com
 SELECT *from customers WHERE first_name="Lina"
 UPDATE customers SET email="lina@gmail.com" WHERE first_name="Lina";

-- TODO:Delete some data
 1. Delete George information
 DELETE from customers WHERE first_name="Geroge";


-- 2. Delete Hitesh data
DELETE from customers WHERE id=3;
