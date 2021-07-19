CREATE DATABASE Task09
GO
USE Task09
GO
CREATE TABLE Customer (
CustomerID int Primary key,
Customername varchar(50),
Address varchar(100),
Phone varchar(12)
)

CREATE TABLE Books (
BookCode int PRIMARY KEY,
Category varchar(50),
Author varchar(50),
Publisher varchar(50),
Title varchar(50),
Price int ,
InStore int
)

CREATE TABLE BookSold (
BookSoldID int PRIMARY KEY,
CustomerID int,
BookCode int,
Date datetime,
Price int,
Amount int,
CONSTRAINT FK_CUSID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT FK_BookCode FOREIGN KEY (BookCode) REFERENCES Books (BookCode)
)

INSERT INTO Books VALUES (01,'Literature','Xuan Quynh','NXB Kim Dong','Song',1000,100),
						 (02,'Memorial','Nguyen Tuan','NXB Tien Lang','Co To',2000,50),
						 (03,'Business','Long Vu','NXB Xe Om','Tu Truyen LMHT',5000,10),
						 (04,'Spirituality','Thich The Hien','Tue Tinh','Phat A Di Da',2500,100),
						 (05,'Ghost','Nguyen Ngoc Ngan','NXB Ma Ca Rong','Xac Chet Ben Nha Tam',3000,20)
SELECT * FROM Books;

INSERT INTO Customer VALUES (112,'Tran Long Vu','Cap Tien - Tien Lang - Hai Phong','+84982179102'),
							(113,'Vu Truong Son','Kien Thiet - Tien Lang - Hai Phong','+84342145222'),
							(114,'Vu Thuy Linh','Thon Nghien -Tu Son - Bac Ninh','+84965412345'),
							(115,'Tran Truong Giang','Dong Trieu - Trieu Dong - Quang Ninh','+84985656789'),
							(116,'Nguyen Van Nhat','Ngoc Hoi - Thanh Tri - Ha Noi','+84567891239')
SELECT * FROM Customer;

INSERT INTO BookSold VALUES (10,112,01,'2020-06-25',1000,50),
							(11,112,03,'2020-06-25',5000,5),
							(12,112,05,'2020-06-25',3000,10),
							(13,113,02,'2021-01-30',2500,10),
							(14,113,05,'2021-04-20',3000,5),
							(15,114,04,'2021-02-05',2500,10),
							(16,115,02,'2021-02-12',2500,10),
							(17,115,01,'2021-03-12',1000,50),
							(18,116,03,'2021-03-30',5000,5),
							(19,116,04,'2021-03-30',5000,5)
SELECT * FROM BookSold;

--2--
CREATE VIEW EXTWO AS
SELECT Books.BookCode , Title, Books.Price ,BookSold.Amount
From Books JOIN BookSold
ON Books.BookCode = BookSold.BookCode;

SELECT * FROM EXTWO;
--3--

CREATE VIEW EXTHREE AS 
SELECT Customer.CustomerID, Customername , Address ,InStore, BookSold.Amount, InStore - BookSold.Amount As [Bought]
FROM(( Customer JOIN BookSold
ON Customer.CustomerID = BookSold.CustomerID)
JOIN Books ON  Books.BookCode = BookSold.BookCode)

SELECT * FROM EXTHREE;

--4--
 CREATE VIEW EXFour As
 SELECT Customer.CustomerID , Customername, Address , Title 
 FROM Customer
 Join Books on Customer.Customername = Books.Title;

 SELECT * FROM EXFour;

 --5--
 CREATE View EXFIVE AS
 SELECT Customer.CustomerID, Customer.Customername , EXTHREE.Bought,BookSold.Price , EXTHREE.Bought*BookSold.Price As[Total Money]
 From ((Customer
 Join BookSold on Customer.CustomerID = BookSold.CustomerID)
 Join EXTHREE On EXTHREE.Amount = BookSold.Amount)

 SELECT * FROM EXFIVE;