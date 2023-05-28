CREATE TABLE Bookings_audit(
 employees_emp_id NUMBER(10)
);
SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER B_audit
BEFORE INSERT ON Bookings_audit
FOR EACH ROW
ENABLE
DECLARE 
   eid NUMBER(10);
BEGIN
 SELECT employees_emp_id INTO eid FROM bookings;
 DBMS_OUTPUT.PUT_LINE('Inserted a new row by employee : '||eid);
END;
/