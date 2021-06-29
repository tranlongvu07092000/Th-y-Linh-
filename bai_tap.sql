--create database big_data

use big_data

-- bang categories
go
create table categories(
categoryID int primary key,
categoryName varchar(50),
description varchar(100),
)
insert into categories values (1, 'Beverages', 'sort drinks, coffees, teas, beers and ales')

INSERT into categories VALUES (2,	'Condiments',	'Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT into categories VALUES (3,	'Confections','	Desserts, candies, and sweet breads')
INSERT into categories VALUES (4,	'Dairy Products',	'Cheeses')
INSERT into categories VALUES (5,	'Grains/Cereals',	'Breads, crackers, pasta, and cereal')
SELECT * FROM categories
--end bang categories
go
-- table suppliers
create table suppliers(
SupplierId int primary key,
CompanyName varchar (50),
ContactName varchar(50),
ContactTitle varchar(50),
Address varchar (50),
City varchar(50),
Region varchar (50),
PostalCode varchar(50),
COuntry varchar(50),
Phone int,
Fax int,
HomePage  varchar (50)
)
INSERT into suppliers VALUES(1,'	Exotic Liquids',	'Charlotte Cooper',	'Purchasing Manager',	'49 Gilbert St.',	'London',	'NULL',	'EC1 4SD', 	'UK',	1715552222,NULL,	NULL)
INSERT into suppliers VALUES(2,	'New Orleans Cajun Delights',	'Shelley Burke',	'Order Administrator',	'P.O. Box 78934',	'New Orleans',	'LA',	'70117',	'USA',	1005554822,NULL,	NULL)
INSERT into suppliers VALUES(3,	'Grandma Kellys Homestead',	'Regina Murphy',	'Sales Representative',	'707 Oxford Rd.',	'Ann Arbor',	'MI',	'48104',	'USA',	3135555735,NULL,	NULL)
INSERT into suppliers VALUES(4,	'Tokyo Traders',	'Yoshi Nagase',	'Marketing Manager',	'9-8 Sekimai Musashino-shi',	'Tokyo',	'NULL',	'100',	'Japan',	0335555011,NULL,	NULL)
INSERT into suppliers VALUES(5,	'Cooperativa de Quesos Las Cabras',	'Antonio del Valle Saavedra',	'Export Administrator',	'Calle del Rosal 4',	'Oviedo',	'Asturias',	'33007',	'Spain',	985987654,NULL,	NULL)
SELECT * FROM suppliers
--end table suppliers
go
--table Product 
create table Product (
ProductId int primary key,
ProductName varchar(50),
SUpplierID int foreign key references Suppliers(supplierId),
categoryID int foreign key references categories(categoryId),
QuantityPerUnit varchar (50),
UnitPrice money,
UnitsInStock int,
UnitsOnOrder int ,
ReorderLevel int,
Discontinued int
)
insert into product VALUES(1,	'Chai',	'1',	'3',	'10 boxes x 20 bags',	'18.0000',	'39',	'0',	'10',	'0')
insert into product VALUES(2,	'Chang',	'1',	'3',	'24 - 12 oz bottles',	'19.0000',	'17',	'40',	'25',	'0')
insert into product VALUES(3,	'Aniseed Syrup',	'1',	'2',	'12 - 550 ml bottles',	'10.0000',	'13',	'70',	'25',	'0')
insert into product VALUES(4,	'Chef Antons Cajun Seasoning',	'2',	'2',	'48 - 6 oz jars',	'22.0000',	'53',	'0',	'0',	'0')
insert into product VALUES(5,	'Chef Antons Gumbo Mix',	'2',	'2',	'36 boxes',	'21.3500',	'0',	'0',	'0',	'1')
SELECT * FROM Product

--end table Product
go
-- bang customers
--drop table customers
create table customers(
CustomerID int primary key,
CompanyName varchar (50),
ContactName varchar(50),
ContactTitle varchar(50),
Address varchar (50),
City varchar (50),
Region varchar (50),
PostalCode varchar(50),
country varchar (50),
Phone int ,
fax int ,

)
insert into customers values (1,	'Alfreds Futterkiste','	Maria Anders',	'Sales Representative',	'Obere Str. 57',	'Berlin',	NULL,	'12209',	'Germany',	0300074321,	0300076545)
insert into customers values (2,	'Ana Trujillo Emparedados y helados',	'Ana Trujillo',	'Owner',	'Avda. de la Constitución 2222',	'México D.F.',	NULL,	'05021',	'Mexico',	55554729,	55553745)
insert into customers values (3,	'Antonio Moreno Taquería',	'Antonio Moreno',	'Owner',	'Mataderos  2312',	'México D.F.',	NULL,	'05023',	'Mexico',	55553932,	NULL)
insert into customers values (4,	'Around the Horn',	'Thomas Hardy',	'Sales Representative',	'120 Hanover Sq.',	'London',	NULL,	'WA1 1DP',	'UK',	1715557788,	1715556750)
insert into customers values (5,	'Berglunds snabbköp',	'Christina Berglund',	'Order Administrator','	Berguvsvägen  8',	'Luleå',	NULL,	'S-958 22',	'Sweden',	092112465,	0921123467)
insert into customers values (6, 'Alfreds Fulterkiste', 'Maria Anders', 'sales Representative','obere Str.57','Berlin','','12209','Germany',0587234423,0300074321,null,null)
select * from customers

--end table customer
go
-- table shippers
create table shippers(
ShipperId int primary key,
CompanyName varchar (50),
Phone int
)

INSERT INTO shippers VALUES(1, 'hitoption', 0587234423)
INSERT INTO shippers VALUES(2, 'hitoption', 0587234423)
INSERT INTO shippers VALUES(3, 'hitoption', 0587234423)
SELECT * FROM shippers
-- add more rows here
GO
-- end table shippers

--table employees
create table employees(
EmployeeId int primary key,
LastName varchar (50),
firstname varchar(50),
Title varchar (50),
TitleOfCourtesy varchar (50),
birthDate date,
HireDate date,
Address varchar(50),
City varchar (50),
Region varchar(50),
PostalCOde int ,
Country varchar (50),
HomePhone int,
Extension int,
Photo varchar (50),
Notes varchar (50),
ReportsTo int
)
ALTER TABLE Employees
DROP COLUMN photo
SELECT * FROM employees
1	Davolio	Nancy	Sales Representative	Ms.	1948-12-08 00:00:00.000	1992-05-01 00:00:00.000	507 - 20th Ave. E.Apt. 2A	Seattle	WA	98122	USA	(206) 555-9857	5467
2	Fuller	Andrew	Vice President, Sales	Dr.	1952-02-19 00:00:00.000	1992-08-14 00:00:00.000	908 W. Capital Way	Tacoma	WA	98401	USA	(206) 555-9482	3457
3	Leverling	Janet	Sales Representative	Ms.	1963-08-30 00:00:00.000	1992-04-01 00:00:00.000	722 Moss Bay Blvd.	Kirkland	WA	98033	USA	(206) 555-3412	3355
4	Peacock	Margaret	Sales Representative	Mrs.	1937-09-19 00:00:00.000	1993-05-03 00:00:00.000	4110 Old Redmond Rd.	Redmond	WA	98052	USA	(206) 555-8122	5176
5	Buchanan	Steven	Sales Manager	Mr.	1955-03-04 00:00:00.000	1993-10-17 00:00:00.000	14 Garrett Hill	London	NULL	SW1 8JR	UK	(71) 555-4848	3453
-- end table employees

--table orders
--drop table Orders
create table orders(
orderId int primary key,
CustomerId int foreign key references customers(customerId),
EmployeeId  int foreign key references employees(employeeId),
shipperId int foreign key references shippers(shipperId),
OrderDate date,
RequiredDate date,
ShippedDate date,
ShipVia int,
Freight money,
ShipAddress varchar (50),
ShipCity varchar(50),
ShipRegion varchar(50),
ShipPostalCode varchar (50),
ShipCountry varchar (50)
)
-- end table orders

-- table order Details
drop table order_details
create table order_details(
orderId int foreign key references orders(orderId),
ProductId int foreign key references product(ProductId),
UnitPrice money ,
QUantily int,
Discount money
)

alter table orders 
add primary key (orderId)
alter table order_details
add foreign key (orderId) references orders(orderId)
--end table order Details