/* Function, Triggers and Stored Procedures */

/* Functions for placing the order*/

CREATE FUNCTION CreateOrder()
RETURNS INT
BEGIN
DECLARE userid INT;
DECLARE InproductID INT;
DECLARE quantity INT;
DECLARE totalcost DECIMAL(10,2);
DECLARE continueOrder BOOLEAN DEFAULT TRUE;
WHILE continueOrder DO
SET continueOrder = FALSE;
SET userid = EXISTS (SELECT * FROM Customers WHERE customerid = INPUT('Enter your customer ID: '));
IF NOT user THEN
SELECT 'Invalid user ID!';
CONTINUE;
END IF;
SET InproductID = INPUT('Enter product ID (or leave blank to finish): ');
IF InproductID IS NULL THEN
LEAVE;
END IF;
SET InproductID = CONVERT_INT(InproductID);
IF NOT EXISTS (SELECT * FROM Products WHERE ProductID = InproductID) THEN
SELECT 'Invalid product ID!';
CONTINUE;
END IF;
SET price = (SELECT price FROM Products WHERE ProductID = productID);
-- Quantity and total cost
SET quantity = CONVERT_INT(INPUT('Enter quantity: '));
SET totalcost = price * quantity;
SELECT 'Total cost for this item:', totalCost;
-- Confirmation and order details
IF UPPER(INPUT('Do you want to add this item (y/N)? ')) = 'Y' THEN
INSERT INTO Orders (OrderID, CustomerId, ProductID, Quantity, Cost, OrderDate)
VALUES ((SELECT MAX(OrderID) + 1 FROM Orders), Customerid, InproductID, quantity, totalCost, SYSDATE);
-- Trigger stock update and order processing
CALL trigger_placeorder();
SET continueOrder = True;
END IF;
END WHILE;
6
RETURN 0; -- Order successfully completed
END;

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

/* Stored procedure for process the order */

CREATE PROCEDURE ProcessOrders(newOrderID INT)
BEGIN
SELECT 'Order placed successfully! Order ID:', newOrderID;
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

/* Stored procedure to add product */

CREATE PROCEDURE AddProduct(
IN p_ProductName VARCHAR(255), IN p_stock_quantity INT,
IN p_ProductID INT,
IN p_Price DECIMAL(10,2),
IN p_CategoryID INT,
IN p_CategoryName VARCHAR(255)
) BEGIN
-- Insert into Orders table INSERT INTO products (ProductID,
Quantity,p_stock_quantity, Cost) VALUES (p_ProductName,
p_ProductID,p_stock_quantity,p_Price);
-- Update stock size in Products table UPDATE Products
SET StockSize = StockSize + p_stock_quantity WHERE ProductID = p_ProductID;
END

/* Trigger AfterInsertRecommendation */

DELIMITER //

CREATE TRIGGER AfterInsertRecommendation AFTER INSERT
ON interaction FOR EACH ROW BEGIN
-- Call the stored procedure to calculate and update RecommendationScore

CALL CalculateRecommendationScore(NEW.User_ID, NEW.Product_ID);
END // DELIMITER ;

/* Stored Procedure */


CREATE DEFINER=`root`@`localhost` PROCEDURE
`CalculateRecommendationScore`(IN p_UserID INT, IN p_ProductID INT) BEGIN
DECLARE mean_score DECIMAL(5, 2); DECLARE interaction_id_value INT;

SELECT AVG(IT.Weightage) INTO mean_score FROM Interaction I
JOIN Interaction_Type IT ON I.Interaction_Type_ID = IT.Interaction_ID WHERE I.User_ID = p_UserID AND I.Product_ID = p_ProductID;

SELECT Interaction_ID INTO interaction_id_value FROM Interaction
WHERE User_ID = p_UserID AND Product_ID = p_ProductID ORDER BY TimeStamp DESC
LIMIT 1;

UPDATE recommendationtable
SET RecommendationScore = mean_score, Interaction_ID = interaction_id_value WHERE User_ID = p_UserID AND Product_ID = p_ProductID;

IF ROW_COUNT() = 0 THEN
INSERT INTO recommendationtable (User_ID, Product_ID, RecommendationScore, Interaction_ID)
VALUES (p_UserID, p_ProductID, mean_score, interaction_id_value); END IF;

END


