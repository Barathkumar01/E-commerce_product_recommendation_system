CREATE TABLE orders 
(
    Order_ID	INT AUTO_INCREMENT PRIMARY KEY,
    User_ID	INT,
    Product_ID	INT,
    Quantity	INT,
    Order_DatePlaceOrder 	DATE,
    Price DOUBLE
);

select count(*) from orders;

INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('1', '10', '15', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('2', '37', '6', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('3', '25', '20', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('4', '35', '20', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('5', '22', '23', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('6', '22', '21', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('7', '26', '10', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('8', '6', '15', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('9', '46', '2', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('10', '32', '22', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('11', '11', '16', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('12', '49', '12', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('13', '32', '17', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('14', '19', '5', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('15', '4', '19', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('16', '7', '4', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('17', '32', '14', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('18', '30', '13', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('19', '44', '16', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('20', '31', '20', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('21', '29', '12', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('22', '29', '21', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('23', '15', '20', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('24', '1', '19', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('25', '14', '7', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('26', '32', '7', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('27', '17', '4', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('28', '16', '11', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('29', '32', '25', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('30', '37', '3', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('31', '24', '20', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('32', '49', '23', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('33', '30', '15', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('34', '31', '6', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('35', '19', '16', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('36', '25', '20', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('37', '11', '17', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('38', '29', '20', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('39', '11', '6', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('40', '38', '4', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('41', '5', '9', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('42', '2', '19', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('43', '44', '15', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('44', '9', '16', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('45', '29', '13', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('46', '6', '22', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('47', '9', '19', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('48', '2', '15', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('49', '15', '9', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('50', '22', '12', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('51', '21', '10', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('52', '2', '6', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('53', '32', '17', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('54', '46', '2', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('55', '15', '8', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('56', '25', '24', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('57', '16', '17', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('58', '34', '14', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('59', '47', '10', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('60', '23', '17', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('61', '25', '8', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('62', '42', '10', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('63', '37', '10', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('64', '40', '4', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('65', '5', '13', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('66', '13', '13', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('67', '28', '16', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('68', '2', '13', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('69', '28', '17', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('70', '28', '12', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('71', '21', '19', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('72', '10', '6', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('73', '4', '16', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('74', '23', '4', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('75', '17', '2', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('76', '29', '25', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('77', '21', '13', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('78', '49', '6', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('79', '43', '8', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('80', '5', '18', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('81', '18', '24', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('82', '30', '21', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('83', '26', '2', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('84', '43', '22', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('85', '16', '23', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('86', '37', '20', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('87', '8', '9', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('88', '21', '20', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('89', '13', '10', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('90', '35', '10', '5', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('91', '38', '8', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('92', '37', '15', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('93', '37', '19', '4', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('94', '17', '25', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('95', '42', '9', '2', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('96', '31', '6', '3', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('97', '37', '4', '1', '2023-09-03');
INSERT INTO orders (Order_ID, User_ID, Product_ID, Quantity, Order_Date ) VALUES ('98', '36', '19', '3', '2023-09-03');



SET SQL_SAFE_UPDATES=0;
