INSERT INTO Raw_Material (Material_ID, Material_Name, Unit_Of_Measure, Unit_Price, Min_Stock, Max_Stock, Description) VALUES
(1, 'Wheat Flour', 'Kg', 1.50, 100, 500, 'High-quality wheat flour');
INSERT INTO Raw_Material (Material_ID, Material_Name, Unit_Of_Measure, Unit_Price, Min_Stock, Max_Stock, Description) VALUES (2, 'Sugar', 'Kg', 0.80, 50, 200, 'Granulated sugar');
INSERT INTO Raw_Material (Material_ID, Material_Name, Unit_Of_Measure, Unit_Price, Min_Stock, Max_Stock, Description) VALUES (3, 'Yeast', 'Pack', 0.50, 20, 80, 'Active dry yeast');
INSERT INTO Raw_Material (Material_ID, Material_Name, Unit_Of_Measure, Unit_Price, Min_Stock, Max_Stock, Description) VALUES (4, 'Butter', 'Kg', 4.00, 30, 100, 'Unsalted butter');
INSERT INTO Raw_Material (Material_ID, Material_Name, Unit_Of_Measure, Unit_Price, Min_Stock, Max_Stock, Description) VALUES (5, 'Milk', 'Litre', 1.20, 40, 150, 'Full-fat milk');

INSERT INTO Raw_Material_Stock (Material_ID, Quantity) VALUES
(1,  50);
INSERT INTO Raw_Material_Stock (Material_ID, Quantity) VALUES (2,  50);
INSERT INTO Raw_Material_Stock (Material_ID, Quantity) VALUES (3, 50);
INSERT INTO Raw_Material_Stock (Material_ID, Quantity) VALUES (4, 50);
INSERT INTO Raw_Material_Stock (Material_ID, Quantity) VALUES (5, 50);

INSERT INTO Product (Product_ID, Product_Name, Production_Date, Expiry_Date, Wholesale_Price, Retail_Price, Min_Stock, Max_Stock) VALUES
(1, 'Bread', NULL, NULL, 2.50, 3.00, 50, 200);
INSERT INTO Product (Product_ID, Product_Name, Production_Date, Expiry_Date, Wholesale_Price, Retail_Price, Min_Stock, Max_Stock) VALUES (2, 'Cake', NULL, NULL, 4.00, 5.00, 20, 80);

INSERT INTO Machine (Machine_ID, Machine_Name, Daily_Capacity) VALUES
(1, 'Baking Oven', 100);

INSERT INTO Supplier (Supplier_ID, Supplier_Name) VALUES
(1, 'Millers Inc.');
INSERT INTO Supplier (Supplier_ID, Supplier_Name) VALUES (2, 'Sugar World');
INSERT INTO Supplier (Supplier_ID, Supplier_Name) VALUES (3, 'Bakes Delight');

INSERT INTO Product_Stock (Stock_ID, Product_ID, Quantity) VALUES
(1, 1, 100);
INSERT INTO Product_Stock (Stock_ID, Product_ID, Quantity) VALUES (2, 2, 30);

INSERT INTO Department (Department_ID, Department_Name) VALUES
(1, 'Purchasing');
INSERT INTO Department (Department_ID, Department_Name) VALUES (2, 'Production');
 INSERT INTO Department (Department_ID, Department_Name) VALUES (3, 'Quality Assurance');
INSERT INTO Department (Department_ID, Department_Name) VALUES (4, 'Sales');

INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Role) VALUES
(1, 'John Smith', 1, 'Purchasing Manager');
INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Role) VALUES (2, 'Mary Jones', 1, 'Purchasing Assistant');
INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Role) VALUES (3, 'Peter Brown', 2, 'Production Supervisor');
INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Role) VALUES (4, 'Sarah Davis', 3, 'QA Inspector');
INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Role) VALUES (5, 'Michael Lee', 4, 'Sales Manager');

INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES
(1, 1, 1, 0.50);  -- 0.5 kg of Wheat Flour per Bread
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (2, 1, 2, 0.25);  -- 0.25 kg of Sugar per Bread
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (3, 1, 3, 0.01);  -- 0.01 pack of Yeast per Bread
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (4, 1, 4, 0.10);  -- 0.10 kg of Butter per Bread
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (5, 1, 5, 0.20);  -- 0.20 liter of Milk per Bread
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (6, 2, 1, 0.75);  -- 0.75 kg of Wheat Flour per Cake
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (7, 2, 2, 0.50);  -- 0.50 kg of Sugar per Cake
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (8, 2, 3, 0.02);  -- 0.02 pack of Yeast per Cake
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (9, 2, 4, 0.20);  -- 0.20 kg of Butter per Cake
INSERT INTO Product_BOM (BOM_ID, Product_ID, Material_ID, Quantity) VALUES (10, 2, 5, 0.30); -- 0.30 liter of Milk per Cake
