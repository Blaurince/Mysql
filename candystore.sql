CREATE DATABASE candystore;

-- Switch candystore database
USE candystore;

-- Create the customer table

CREATE TABLE customers (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30),
    phone VARCHAR(20),
    createAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );


-- Add our first customer:
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Damian', 'Montero', 'damian@bocacoade.com', '976-CODE');

--let's get all of the customers:
SELECT * FROM CUSTOMERS;
 

-- add our second customers
INSERT INTO customers (firstName, lastName, email, phone)
VALUES ('Cassandra', 'Curcio', 'cassandra@bocadode', '954-CATS');

-- to find a specific customer, I can run:
SELECT * From customers WHERE firstName = 'Cassandra';


-- Create the customer table

CREATE TABLE orders (
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    total DECIMAL(8,2),
    tax DECIMAL(7,2),
    createAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- now let's add an oreder to our order table:
    INSERT INTO orders ( customerId, total, tax)
    VALUES (1, 8.2, 7.2);

    SELECT * FROM customers
    JOIN orders ON orders.customerId = customers.customerId
    WHERE firstName = 'Damian';
