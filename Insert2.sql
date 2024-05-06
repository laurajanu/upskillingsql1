SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE INSERT2 AS

/*

SELECT * FROM PRODUCTS;

INSERT ALL
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category)
    VALUES (113113, 111111, 1, 'MATCHA', 50, 'New')
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category)
    VALUES (123144, 222222, 2, 'CHAI', 30, 'Asia')
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category)
    VALUES (113114, 333333, 1, 'MATE', 40, 'Japanese')
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category)
    VALUES (115623, 444444, 3, 'ROOIBOS', 25, 'Africa')
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category)
    VALUES (113115, 555555, 1, 'HERBAL', 60, 'Classic')
SELECT * FROM dual;

--------------------------

SELECT *
FROM CUSTOMERS;

INSERT ALL
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country)
    VALUES (121111, 'John', 'Doe', DATE '1998-05-15', 8612345678, 'john.doe@example.com', '123 Main St', 'Kaunas', 'USA')
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country)
    VALUES (124435, 'Jane', 'Smith', DATE '2005-10-20', 8698765432, 'jane.smith@example.com', '456 Oak Ave', 'Riga', 'Canada')
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country)
    VALUES (126783, 'Alice', 'Johnson', DATE '1995-03-25', 8655512345, 'alice.johnson@example.com', '789 Elm St', 'Melbourne', 'Australia')
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country)
    VALUES (129333, 'Michelle', 'Brown', DATE '1988-09-12', 8677555555, 'michael.brown@example.com', '321 Pine St', 'Brighton', 'UK')
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country)
    VALUES (124769, 'Emily', 'Wilson', DATE '1992-07-18', 8677888888, 'emily.wilson@example.com', '654 Maple Ave', 'Paris', 'Germany')
SELECT * FROM dual;


-----------------------

SELECT * FROM ORDERS;

INSERT ALL
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS)
    VALUES (111111, 121111, 113113, DATE '2024-01-03', 2, 1, 152, 'delivered')
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS)
    VALUES (222222, 121111, 123144, DATE '2023-11-28', 4, 0, 88, 'cancelled')
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS)
    VALUES (333333, 124435, 113113, DATE '2024-02-04', 1, 1, 76, 'delivered')
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS)
    VALUES (444444, 126783, 115623, DATE '2024-02-26', 1, 1, 59, 'sent')
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS)
    VALUES (555555, 126783, 113113, DATE '2024-02-27', 3, 1, 228, 'confirmed')
SELECT * FROM dual;

-----------

SELECT *
FROM SHIPMENTS;

INSERT ALL
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no)
    VALUES (71111, 111111, DATE '2024-01-03', 999123456)
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no)
    VALUES (72222, 222222, DATE '2023-11-28', 999789012)
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no)
    VALUES (73333, 333333, DATE '2024-02-04', 999345678)
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no)
    VALUES (74444, 444444, DATE '2024-02-26', 999901234)
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no)
    VALUES (75555, 555555, DATE '2024-02-27', 999567890)
SELECT * FROM dual;


----------------

SELECT *
FROM SUPPLIERS;

INSERT ALL
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address)
    VALUES (54111, 113113, 'MATCHA Supplier', 'John Green', 76995551234, 'john.green@example.com', 'Japan', 'Tokyo', '123 Green St')
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address)
    VALUES (54222, 123144, 'CHAI Supplier', 'Sarah Spice', 76995556789, 'sarah.spice@example.com', 'India', 'Mumbai', '456 Spice Ave')
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address)
    VALUES (54333, 113114, 'MATE Supplier', 'Michael Tea', 76995552345, 'michael.tea@example.com', 'China', 'Beijing', '789 Tea St')
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address)
    VALUES (54444, 115623, 'ROOIBOS Supplier', 'Jane Green', 76995551234, 'jane.green@example.com', 'Japan', 'Kyoto', '456 Red St')
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address)
    VALUES (54555, 113115, 'HERBAL Supplier', 'Emily Green', 76995551234, 'emily.green@example.com', 'Japan', 'Osaka', '789 Blue St')
SELECT * FROM dual;


*/

END INSERT2;