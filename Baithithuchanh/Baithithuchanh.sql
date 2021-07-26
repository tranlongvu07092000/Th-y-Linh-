-- 1
CREATE DATABASE SellingPoint
Go
USE SellingPoint
GO
--2
CREATE TABLE Categories (
CateID CHAR(6) PRIMARY KEY,
CateName NVARCHAR(100) not null,
Description NVARCHAR(200)
)

CREATE TABLE Parts (
PartID INT PRIMARY KEY,
PartName NVARCHAR (100) not null,
CateID char(6) FOREIGN KEY (CateID) REFERENCES Categories (CateID),
Description NVARCHAR(100),
Price MONEY not null,
Quantity INT ,
Warrantly INT,
Photo NVARCHAR(200) DEFAULT 'Document/photo.jpg'
)
-- 3

INSERT INTO Categories VALUES ('CaO','SSD','256GB'),
							  ('FeO','CoreI9','New 11th Generation Microprocessor'),
							  ('CuO','CoreI7','Intel High-end Chip Line')

INSERT INTO Parts VALUES (123456,'SSD Samsung PM9A1 1TB M2 PCIe 4.0 MZVL21T0HCLR','CaO','This SSD device is equipped with the companys latest PCIe 4.0 technology,',1000,10,8,'User/photo.jpg'),
						 (234567,'Intel Core i9 10900K','FeO','Equipped with extreme parameters, including: 10 cores 20 threads.',2000,20,12,'Document/photo1.jpg'),
						 (456789,'CPU Intel Core i7-10700','CuO','At the high end of parsing with outstanding processing power.',5000,10,12,'Document/photo2.jpg'),
						 (987654,'SSD SamSung 870 QVO','CaO','This hard drive has read the decent rate, up to 720TBW and is claimed by Samsung',4000,30,36,'Document/photo3.png'),
						 (123987,'SSD SamSung 860','CaO','This hard drive has read the decent rate, up to 720TBW and is claimed by Samsung',2000,50,36,'Document/photo4.jpg'),
						 (654789,'InTel Core i9 10000','FeO','Equipped with extreme parameters, including: 10 cores 20 threads',6000,10,24,'USER/anh.png'),
						 (999999,'Core i9 DK CH','FeO','Equipped with extreme parameters, including: 10 cores 20 threads',5000,5,36,'USER/anh.png1'),
						 (111111,'Corei7 intel 5500k','CuO','At the high end of parsing with outstanding processing power',8000,10,36,'USER/anh2.png'),
						 (555555,'Samsung Core i7 intel ','CuO','At the high end of parsing with outstanding processing power',2000,50,24,'USER/anh3.png')


-- 4

SELECT PartName From Parts Where Price > 100;

-- 5

SELECT Parts.PartId, Parts.PartName, Parts.Description, Parts.Price, Parts.Quantity, Parts.Warranty, Parts.Photo FROM Parts inner join Categories
ON Parts.CateId = Categories.CateId
WHERE Categories.CateName = N'cpu' 

-- 6 
CREATE VIEW v_Parts
AS
SELECT Parts.PartID, Parts.PartName, Categories.CateName, Parts.Price, Parts.Quantity FROM Parts 
inner join Categories ON Parts.CateID = Categories.CateID;
GO

SELECT * FROM v_Parts
GO
-- 7

CREATE VIEW v_TopParts AS
SELECT TOP 5 * FROM Parts
ORDER BY Price DESC

SELECT * FROM v_TopParts