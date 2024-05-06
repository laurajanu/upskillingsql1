CREATE TABLE ORDERS(
    order_id INT NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_date DATE NOT NULL,
    quantity INT,
    paid INT,
    total INT NOT NULL,
    status char(10) NOT NULL);
    
CREATE TABLE CUSTOMERS(
    customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    birthdate DATE,
    phone INT,
    email varchar(100) NOT NULL,
    address varchar(200),
    city varchar(50),
    country varchar(100));
    
CREATE TABLE PRODUCTS(
    product_id INT NOT NULL PRIMARY KEY,
    order_id INT NOT NULL,
    supplier_id INT NOT NULL,
    name varchar(100) NOT NULL,
    price int NOT NULL,
    category varchar(50),
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id));
    
CREATE TABLE SHIPMENTS(
    shipment_id INT NOT NULL PRIMARY KEY,
    order_id INT NOT NULL,
    shipment_date DATE NOT NULL,
    tracking_no INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id));
    
CREATE TABLE SUPPLIERS(
    supplier_id INT NOT NULL PRIMARY KEY,
    product_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    contact_name varchar(200) NOT NULL,
    phone INT NOT NULL,
    email varchar(100) NOT NULL,
    country varchar(100) NOT NULL,
    city varchar(50) NOT NULL,
    address varchar(200) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id));
    
ALTER TABLE PRODUCTS
ADD CONSTRAINT fk_supplier_id
FOREIGN KEY (supplier_id) REFERENCES SUPPLIERS(supplier_id);

ALTER TABLE ORDERS
ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id);

ALTER TABLE ORDERS
ADD CONSTRAINT fk_product_id
FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id);