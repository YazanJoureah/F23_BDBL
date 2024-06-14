
SET SERVEROUTPUT ON;

--Purchase Order
DECLARE
  Quantities Material_Array := Material_Array(
    RAW_MATERIALS(1, 50),
    RAW_MATERIALS(2, 50),
    RAW_MATERIALS(3, 50),
    RAW_MATERIALS(4, 50)
  );
  Total_Cost Number;
BEGIN
  Total_Cost := Purchase_Orders(quantities, 2);
  DBMS_OUTPUT.PUT_LINE('Total Cost Returned from Function: ' || Total_Cost);
END;

-- Production
declare
p int;
   BEGIN
        p := Production_Process(1, 2, 100); 
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE = -20001 THEN
                DBMS_OUTPUT.PUT_LINE('Not enough raw materials! Production failed.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('An error occurred during production: ' || SQLERRM);
            END IF;
    END;
    /
    