SELECT 
    rm.Material_Name, 
    rm.Unit_Of_Measure,
    COALESCE(rs.Quantity, 0) AS Current_Quantity  
FROM 
    Raw_Material rm
LEFT JOIN 
    Raw_Material_Stock rs ON rm.Material_ID = rs.Material_ID;


SELECT 
    p.Product_Name,
    COALESCE(ps.Quantity, 0) AS Current_Quantity
FROM 
    Product p
LEFT JOIN 
    Product_Stock ps ON p.Product_ID = ps.Product_ID;
