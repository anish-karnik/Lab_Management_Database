-- Creating User
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';

-- Creating Views
CREATE VIEW `view1` AS 
SELECT inventory.ID, inventory.Equipment_Name, inventory.Vendor_Address, inventory.Price, inventory.Quantity, accessed_tool.Roll_Number, accessed_tool.Quantity_Issued
FROM inventory
join accessed_tool where inventory.ID=accessed_tool.ID;

CREATE VIEW `view2` AS 
SELECT staff.Employee_ID, staff.First_Name, staff.Role, lab.Lab_Name, lab.Room_No, lab.Block_No
FROM staff
JOIN lab WHERE staff.Lab_Name=lab.Lab_Name;

-- Checking Views
SELECT * FROM lab_management.view1;
SELECT * FROM lab_management.view2;

-- Using the database to run queries on
USE lab_management;

-- Granting Permissions 
GRANT SELECT, UPDATE, DELETE ON Lab_Department TO 'user1'@'localhost';
GRANT SELECT ON view1 TO 'user1'@'localhost';
SHOW GRANTS FOR 'user1'@'localhost';

-- Select Commands
SELECT * FROM Lab_Department;
SELECT * FROM lab_management.view1;

-- Update Commands
UPDATE Lab_Department SET Dept_Name='CSE' WHERE Dept_Name='MSE';
UPDATE lab_management.view1 SET lab_management.view1.Quantity=10*lab_management.view1.Quantity;

-- Delete Commands
DELETE FROM Lab_Department WHERE Dept_Name='CSE';
DELETE FROM lab_management.view1;

-- Revoking Permissions 
REVOKE UPDATE, DELETE ON Lab_Department FROM 'user1'@'localhost';

-- Update Commands after revoking
UPDATE Lab_Department SET Dept_Name='ME' WHERE Dept_Name='CL';
UPDATE lab_management.view1 SET lab_management.view1.Quantity=10*lab_management.view1.Quantity;

-- Delete Commands after revoking
DELETE FROM Lab_Department WHERE Dept_Name='CL';
DELETE FROM lab_management.view1;

-- Referential Integrity Questions
UPDATE students SET students.Roll_Number=12000001 WHERE students.Roll_Number=12278656;

DELETE FROM students WHERE students.Roll_Number=12000001;

-- Foreign Key checks
SET foreign_key_checks = 0;  --  Can set to 1 or 0

-- More Referential Integrity related Questions
UPDATE proj_taken SET proj_taken.Roll_Number=12000000 WHERE proj_taken.Roll_Number=12278656;
DELETE FROM proj_taken WHERE proj_taken.Roll_Number=12278656;
INSERT INTO `proj_taken` VALUES (1349232821,12000001,'CS 799');

