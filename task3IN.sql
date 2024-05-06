Set SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE Task31(
    p_Customer_ID    IN CUSTOMERS.Customer_ID%TYPE,
    p_First_Name     IN CUSTOMERS.First_Name%TYPE,
    p_Surname        IN CUSTOMERS.Surname%TYPE,
    p_Birthdate      IN CUSTOMERS.Birthdate%TYPE,
    p_Phone          IN CUSTOMERS.Phone%TYPE,
    p_Email          IN CUSTOMERS.Email%TYPE,
    p_Address        IN CUSTOMERS.Address%TYPE,
    p_City           IN CUSTOMERS.City%TYPE,
    p_Country        IN CUSTOMERS.Country%TYPE
) AS
BEGIN
    INSERT INTO CUSTOMERS(Customer_ID, First_Name, Surname, Birthdate, Phone, Email, Address, City, Country)
    VALUES (p_Customer_ID, p_First_Name, p_Surname, p_Birthdate, p_Phone, p_Email, p_Address, p_City, p_Country);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error adding record to CUSTOMERS: ' || SQLERRM);
END Task31;
/

CREATE OR REPLACE PROCEDURE Task32(
    p_Order_ID    IN ORDERS.Order_ID%TYPE,
    p_Customer_ID IN ORDERS.Customer_ID%TYPE,
    p_Product_ID  IN ORDERS.Product_ID%TYPE,
    p_Order_Date  IN ORDERS.Order_Date%TYPE,
    p_Quantity    IN ORDERS.Quantity%TYPE,
    p_Paid        IN ORDERS.Paid%TYPE,
    p_Total       IN ORDERS.Total%TYPE,
    p_Status      IN ORDERS.Status%TYPE
) AS
BEGIN
    INSERT INTO ORDERS(Order_ID, Customer_ID, Product_ID, Order_Date, Quantity, Paid, Total, Status)
    VALUES (p_Order_ID, p_Customer_ID, p_Product_ID, p_Order_Date, p_Quantity, p_Paid, p_Total, p_Status);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error adding record to ORDERS: ' || SQLERRM);
END Task32;
/

CREATE OR REPLACE PROCEDURE Task33(
    p_Product_ID   IN PRODUCTS.Product_ID%TYPE,
    p_Order_ID     IN PRODUCTS.Order_ID%TYPE,
    p_Supplier_ID  IN PRODUCTS.Supplier_ID%TYPE,
    p_Name         IN PRODUCTS.Name%TYPE,
    p_Price        IN PRODUCTS.Price%TYPE,
    p_Category     IN PRODUCTS.Category%TYPE
) AS
BEGIN
    INSERT INTO PRODUCTS(Product_ID, Order_ID, Supplier_ID, Name, Price, Category)
    VALUES (p_Product_ID, p_Order_ID, p_Supplier_ID, p_Name, p_Price, p_Category);
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error adding record to PRODUCTS: ' || SQLERRM);
END Task33;
/

