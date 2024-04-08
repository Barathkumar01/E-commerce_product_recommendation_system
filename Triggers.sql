/* Triggers for place order*/

CREATE TRIGGER trigger_placeorder
AFTER INSERT ON Orders
FOR EACH ROW
BEGIN
-- Update product stock
UPDATE Products
SET Stock = Stock - NEW.Quantity
WHERE ProductID = NEW.ProductID;
CALL ProcessOrders();
END;


/* Triggers for add product */

CREATE TRIGGER trigger_AddProduct
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
DECLARE ProductName VARCHAR(255);
DECLARE stock_quantity INT;
DECLARE ProductID INT ;
DECLARE Price DECIMAL(10,2);
DECLARE CategoryID INT ;
DECLARE CategoryName VARCHAR(255);
SET ProductName = NEW.ProductName;
SET stock_quantity = NEW.stock_quantity;
SET ProductID = NEW.ProductID;
SET Price - NEW.Price ;
SET CategoryID = NEW.CategoryID;
SET CategoryName = NEW.CategoryName;
CALL AddProduct(ProductName, stock_quantity, ProductID,Price, CategoryID, CategoryName);
END;

/* Trigger AfterInsertRecommendation */

DELIMITER //

CREATE TRIGGER AfterInsertRecommendation AFTER INSERT
ON interaction FOR EACH ROW BEGIN
-- Call the stored procedure to calculate and update RecommendationScore

CALL CalculateRecommendationScore(NEW.User_ID, NEW.Product_ID);
END // DELIMITER ;


