/* Stored procedure for process the order */

CREATE PROCEDURE ProcessOrders(newOrderID INT)
BEGIN
SELECT 'Order placed successfully! Order ID:', newOrderID;
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

/* Stored Procedure to calculate Recommendation Score */
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