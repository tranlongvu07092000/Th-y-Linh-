CREATE DATABASE ASSIGNMENT2
GO
USE ASSIGNMENT2
GO
CREATE TABLE ListOfProductsByBrand (
CarrierCode int ,
NameCompany varchar(10),
ADDRESS varchar(10),
PhoneNumber bigint,
CONSTRAINT PK_MSH PRIMARY KEY (CarrierCode)
)
SELECT * FROM ListOfProductsByBrand;
INSERT INTO ListOfProductsByBrand VALUES (123,'Asus','USA',983232)
INSERT INTO ListOfProductsByBrand VALUES (456,'DELL','Russia',456789)
INSERT INTO ListOfProductsByBrand VALUES (567,'MacBook','Germany',123654)
INSERT INTO ListOfProductsByBrand VALUES (234,'HP','China',321654)
INSERT INTO ListOfProductsByBrand VALUES (678,'Acer','VietNam',844567)

CREATE TABLE ListOfProducts(
NameOfProduct varchar(50),
CarrierCode int,
Describe varchar(50),
Unit varchar (10),
Price money,
Amount int,
CONSTRAINT PK_NAMEPRODUCT PRIMARY KEY (NameOfProduct),
CONSTRAINT FK_CARRIER FOREIGN KEY (CarrierCode) REFERENCES ListOfProductsByBrand(CarrierCode)
)
SELECT * FROM ListOfProducts;
INSERT INTO ListOfProducts VALUES('MacBook Pro 2019',567,'High-End Laptop','PCS','1000',10)
INSERT INTO ListOfProducts VALUES('ASUS Vivobook',123,'Sell Best','PCS','500',25)
INSERT INTO ListOfProducts VALUES('HP ENVY X360',234,'SELL NOT GOOD','PCS','200',100)
INSERT INTO ListOfProducts VALUES('DELL XPS 13',456,'INVENTORY','PCS','450',2)

-- 4 a--
SELECT NameCompany From ListOfProductsByBrand;
--4 B--
SELECT NameOfProduct From ListOfProducts;
--5 a--
SELECT * FROM ListOfProductsByBrand ORDER BY NameCompany DESC;
--5 b--
SELECT * FROM ListOfProducts ORDER BY Price DESC;
--5C--
SELECT * FROM ListOfProductsByBrand WHERE NameCompany = 'ASUS';
--5D--
SELECT * FROM ListOfProducts WHERE Amount < 11;
--5E--
SELECT * FROM ListOfProducts WHERE NameOfProduct LIKE 'A%';
--6A--
SELECT COUNT(NameOfProduct) FROM ListOfProducts;
--6B--
SELECT COUNT(NameCompany) FROM ListOfProductsByBrand;

--6C--
SELECT NameOfProduct , SUM(Amount) AS "Tong" FROM ListOfProducts GROUP BY NameOfProduct;
--6D--
SELECT SUM(AMOUNT) FROM ListOfProducts;
--7A--
UPDATE ListOfProducts SET Price ='>0';
--7B--



