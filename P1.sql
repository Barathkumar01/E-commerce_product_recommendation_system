-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE PlaceOrder(
    IN p_UserID INT,
    IN p_ProductID INT,
    IN p_Quantity INT
)
BEGIN

    DECLARE currentStock INT;

    -- Get current stock size
    SELECT StockSize INTO currentStock
    FROM Products
    WHERE ProductID = p_ProductID;

    -- Check if stock size is less than 50
    IF currentStock - p_Quantity < 50 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock Warning: Stock size is less than 50.';
    END IF;
    -- Insert into Orders table
    INSERT INTO Orders (UserID, ProductID, Quantity, Order_Date)
    VALUES (p_UserID, p_ProductID, p_Quantity, current_date());

	UPDATE Orders as O
    Join products as p on o.Product_ID=p.Product_ID
    set o.Price = o.quantity*p.price;    
    
    -- Update stock size in Products table
    UPDATE Products
    SET StockSize = StockSize - p_Quantity
    WHERE ProductID = p_ProductID;
END //

DELIMITER ;
