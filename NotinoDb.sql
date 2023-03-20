CREATE DATABASE NotinoDb
USE master

CREATE TABLE Address (
    address_id INT NOT NULL,
	country NVARCHAR(20) NOT NULL,
	city NVARCHAR(20) NOT NULL,
	street NVARCHAR(20) NOT NULL,
	postal_code INT NOT NULL,	
   );

CREATE TABLE Users (
user_id INT NOT NULL, 
first_name NVARCHAR(22) NOT NULL,
last_name NVARCHAR(22) NOT NULL,
username NVARCHAR(22) NOT NULL,
password NVARCHAR(50) NOT NULL,  
phone NVARCHAR(10) NOT NULL, 
email NVARCHAR(40) NOT NULL,    
address_id INT NOT NULL,
);

CREATE TABLE Categories (
    category_id INT NOT NULL,
    category_name NVARCHAR(60) NOT NULL,
	details NVARCHAR(60) NOT NULL,
);


CREATE TABLE Product (
ProductID int NOT NULL UNIQUE,
Name varchar(20) NOT NULL,
Quantity int NOT NULL,
Price numeric(8,4) NOT NULL
);

CREATE TABLE ShoppingCart (
CartID varchar(20) NOT NULL UNIQUE,
ProductID int NOT NULL,
Address varchar(30) NOT NULL,
Quantity int NOT NULL,
CreationDate datetime NOT NULL
);


CREATE TABLE Orders (
    order_id INT NOT NULL,
	discount smallmoney, 
    total_price smallmoney, 
	tracking_number NVARCHAR(30) NOT NULL,
	status NVARCHAR(30) NOT NULL,
	order_date DATETIME DEFAULT GETUTCDATE(),
	arrival_date DATETIME NOT NULL,
    address_id INT NOT NULL,
    cart_id INT NOT NULL,
	payment_method_id INT NOT NULL,
  
);

CREATE TABLE Order_info (
OrderID varchar(20) NOT NULL UNIQUE,
Price smallmoney,
DateofShipp datetime NOT NULL,
);

INSERT INTO Address(address_id, country, city, street , postal_code) VALUES
(48,	'Poland',	'Rogowo',	'Esker Parkway',	88-420),
(75,	'Brazil',	'Varginha',	'Caliangt Circle',	37000-000),
(43,   	'Japan',	'Asaka',	'Mcguire Terrace',	963-0107),
(15,	'Brazil',	'Ibaiti'	,'Utah Crossing',	84900-000),
(25,	'Malaysia',	'Alor Star',	'Hayes Alley',	06250),
(24,	'Czech', 'Republic	Dobroměřice',	'Hauk Hill',	44001),
(50,	'Brazil',	'Conceição do Coité',	'Valley Edge Drive',	48730-000),
(20,	'Russia',	'Frolovo',	'1st Parkway',	403538),
(4,	'Czech Republic',	'Zastávka',	'Northridge Avenue',	664-84),
(63,	'Russia', 'Valerianovsk',	'Meadow Ridge Park',	624365);


INSERT INTO Users (user_id,username,password,first_name,last_name,phone,email,address_id) VALUES
(1,'EdiG', 'daniel29','Edi','Georgiev','0887108855','edigeorgievg@gmail.com',40),
(2,'MartinA', 'martin1197','Martin','Asenov','0887107630','martiasenov@gmail.com',39),
(3,'Zlatomilla', 'zlatomila21','Zlatomil','Mincheva','0889341679','zminchevvaa@gmail.com',38),
(4,'Milvena', 'milvenam','Milvena','Maneva','0877676994','maneva@gmail.com',37),
(5,'Georgi', 'georgi11','Georgi','Radev','0888676567','gradev@gmail.com',36),
(74,'hgandy0','QM6SScxq6Oc','Hermia','Gandy',18-186-5130,'hgandy0@google.com.au',1),
(47,'mdye1','ioVpjss1A','Markus','Dye',146-549-1031,'mdye1@studiopress.com',2),
(8,'akretchmer2','wavyNwNY','Any','Kretchmer',618-346-8041,'akretchmer2@guardian.co.uk',3),
(61,'ccuningham3','y1B2qTi','Conroy','Cuningham',623-253-2582,'ccuningham3@xrea.com',4),
(55,'shewell4','kcFA0wS3CZY','Sinclair','Hewell',249-165-0940,'shewell4@clickbank.net',5),
(74,'tszanto5','RbGe2C','Tim','Szanto',116-445-4962,'tszanto5@adobe.com',6),
(99,'glethibridge6','1WLrXexlus7n','Gordon','Lethibridge',336-333-1586,'glethibridge6@eepurl.com',7),
(67,'fmccawley7','nSIkC669gVFb','Fernando','McCawley',978-399-9932,'fmccawley7@google.de',8),
(23,'nbazire8','5N0d1zY','Noby','Bazire',185-318-1155,'nbazire8@amazon.com',9),
(27,'pwhitten9','DvdmibhaNwgm','Pryce','Whitten',227-855-4422,'pwhitten9@arizona.edu',10);


INSERT INTO Categories (category_id,category_name,details) VALUES
(1, 'Perfumes', 'Women, Unisex'),
(2,'Perfumes', 'Men'),
(3,'Perfumes','Unisex'),
(4,'Makeup', 'face'),
(5,'Makeup','eyes'),
(6,'Makeup','lips'), 
(7,'Makeup','nails'),
(8, 'Hair', 'care'), 
(9, 'Hair','styling'),
(10,'Hair','hair dye'),
(11, 'Face', 'face care'),
(12, 'Face', 'sun'),
(13,'Face','toning'),
(14,'Makeup','eyebrows'),
(15,'Makeup','fake eyelashes');


INSERT INTO Product (ProductID,Name,Quantity,Price) VALUES
(1, 'lipstick' , 10, 230.00),
(2, 'highlighter' , 8 , 62.33),
(3, 'perfume', 2 , 312.00),
(4, 'face cream', 14 , 150.66),
(5, 'shampoo',3 , 95.00),
(6,'foundation',4,327.00),
(7,'bronzer',10,260.30),
(8,'fake eyelashes',5,107.25),
(9,'toothpaste',7,89.60),
(10,'hairspray',5,60.50);

INSERT INTO ShoppingCart (CartID,ProductID,Address,Quantity,CreationDate) VALUES
(1,48,'Anhalt Plaza',86,4/5/2022),
(2,32,'Petterle Terrace',21,9/12/2022),
(3,22,'Hanover Lane',98,12/13/2021),
(4,57,'Bultman Junction',55,10/25/2022),
(5,80,'Merchant Plaza',19,3/25/2022),
(6,86,'Glacier Hill Alley',45,9/1/2022),
(7,18,'Forest Run Avenue',92,4/30/2022),
(8,24,'Independence Crossing',68,10/10/2022),
(9,5,'Thierer Plaza',79,1/30/2022),
(10,78,'Springview Circle',92,8/8/2022);

INSERT INTO Order_info (OrderID,Price,DateofShipp) VALUES
(1,4,6/25/2022),
(2,5,9/12/2022),
(3,6,7/28/2022),
(4,1,1/16/2022),
(5,2,7/30/2022),
(6,3,4/7/2022),
(7,10,8/12/2022),
(8,9,8/13/2022),
(9,7,9/13/2022),
(10,8,1/7/2022);


--------------------------------------------------------------------------
CREATE Procedure GetProducts
AS BEGIN 
SELECT Name, Price 
FROM Product
ORDER BY Price;
END;

ALTER PROCEDURE GetProducts(@min_price AS DECIMAL ,@max_price AS DECIMAL)
AS BEGIN 
SELECT Name, Price 
FROM Product
WHERE Price >= @min_price AND Price <= @max_price
ORDER BY Price;
END;

EXEC GetProducts;


----------------------------------------------------------------------------
CREATE TABLE USERS_HISTORY
(
user_id int,
old_name varchar(22),
new_name varchar(22)
)

CREATE TRIGGER UPDATE_INSERT_FIRSTNAME_TRIGGER
ON USERS
FOR UPDATE
AS
   IF UPDATE(first_name)
   BEGIN
        INSERT INTO USERS_HISTORY(user_id, old_name, new_name)
        SELECT i.user_id , d.first_name, i.first_name
		FROM inserted i , deleted d
		WHERE i.user_id  = d.user_id 
	END

	UPDATE USERS
	SET first_name = first_name + '-' + 'NEW'
    WHERE user_id IN (1, 5)


SELECT*
FROM USERS
WHERE USER_ID IN (1, 27, 55, 61, 99, 14)
