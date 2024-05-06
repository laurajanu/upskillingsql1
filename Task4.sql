SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE Task4 AS
    /*
    DECLARE
        TYPE TASK41 IS RECORD (
            order_id INT,
            order_date DATE,
            paid INT
        );

        r_task TASK41;

        CURSOR c_order IS
            SELECT order_id,
                   order_date,
                   paid
            FROM Orders
            WHERE order_id = 111111;

    BEGIN
        OPEN c_order;
        FETCH c_order INTO r_task;
        CLOSE c_order;

        dbms_output.put_line('Order ID: ' || r_task.order_id);
        dbms_output.put_line('Order Date: ' || TO_CHAR(r_task.order_date, 'DD-MON-YYYY'));
        dbms_output.put_line('Paid: ' || r_task.paid);
    END;
    */
END Task4;
/
