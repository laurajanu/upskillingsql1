SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE Task3 AS

PROCEDURE Task31(
    p_Customer_ID    IN CUSTOMERS.Customer_ID%TYPE,
    p_First_Name     IN CUSTOMERS.First_Name%TYPE,
    p_Surname        IN CUSTOMERS.Surname%TYPE,
    p_Birthdate      IN CUSTOMERS.Birthdate%TYPE,
    p_Phone          IN CUSTOMERS.Phone%TYPE,
    p_Email          IN CUSTOMERS.Email%TYPE,
    p_Address        IN CUSTOMERS.Address%TYPE,
    p_City           IN CUSTOMERS.City%TYPE,
    p_Country        IN CUSTOMERS.Country%TYPE
    );


PROCEDURE Task32(
    p_Order_ID    IN ORDERS.Order_ID%TYPE,
    p_Customer_ID IN ORDERS.Customer_ID%TYPE,
    p_Product_ID  IN ORDERS.Product_ID%TYPE,
    p_Order_Date  IN ORDERS.Order_Date%TYPE,
    p_Quantity    IN ORDERS.Quantity%TYPE,
    p_Paid        IN ORDERS.Paid%TYPE,
    p_Total       IN ORDERS.Total%TYPE,
    p_Status      IN ORDERS.Status%TYPE
);

PROCEDURE Task33(
    p_Product_ID   IN PRODUCTS.Product_ID%TYPE,
    p_Order_ID     IN PRODUCTS.Order_ID%TYPE,
    p_Supplier_ID  IN PRODUCTS.Supplier_ID%TYPE,
    p_Name         IN PRODUCTS.Name%TYPE,
    p_Price        IN PRODUCTS.Price%TYPE,
    p_Category     IN PRODUCTS.Category%TYPE
);

END Task3;