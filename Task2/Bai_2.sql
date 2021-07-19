create database ban_hang

use ban_hang

create table customers(
    idCustomer VARCHAR(10),
    nameCustomer NVARCHAR(30),
    telephoneNumber int,
    sex CHAR check(sex = 'm' or sex = 'f') DEFAULT 'm',
    birthday DATETIME,
    address VARCHAR (50),
    CONSTRAINT pk_customers PRIMARY key (idCustomer)
)
insert into customers VALUES('khach_1',N'Vũ Trường Sơn', 0587234423, 'm', '2000-08-30','Hà Nội'),
                            ('khach_2',N'Trần Long Vũ', 0587234423, 'm', '2000-10-07','Hà Nội'),
                            ('khach_3',N'Nguyễn Long Nhật', 0587234423, 'm', '2000-02-29','Hà Nội'),
                            ('khach_4',N'Vũ Ngọc Trường An', 0587234423, 'm', '2000-03-08','Hà Nội')

select * from customers 
--       product    ---
CREATE TABLE products(
    idProduct VARCHAR(10),
    nameProduct VARCHAR(20),
    description VARCHAR(100),
    Don_vi VARCHAR(20),
    status VARCHAR(20),
    hangCoSan int,
    daBan int,
    CONSTRAINT pk_products PRIMARY KEY (idProduct)
)

insert into products VALUES ('SanPham_1', 'macbook','cpu 2.5ghz, ram 16gb, pin 10000Amp','chiếc','co san',100,1000),
                            ('SanPham_2', 'lambogili','cpu 2.5ghz, ram 16gb, pin 10000Amp','chiếc','co san',100,2000),
                            ('SanPham_3', 'mecedex','cpu 2.5ghz, ram 16gb, pin 10000Amp','chiếc','co san',100,4000),
                            ('SanPham_4', 'BMW','cpu 2.5ghz, ram 16gb, pin 10000Amp','chiếc','co san',100,6000),
                            ('SanPham_5', 'macbook','cpu 2.5ghz, ram 16gb, pin 10000Amp','chiếc','hang moi',100,2500)
SELECT * FROM products
alter TABLE products
add price money
update products
set price = 10000 where idProduct = 'SanPham_1'
update products
set price = 40000 where idProduct = 'SanPham_2'
update products
set price = 50000 where idProduct = 'SanPham_3'
update products
set price = 45000 where idProduct = 'SanPham_4'
update products
set price = 15000 where idProduct = 'SanPham_5'
--      order    ----
drop table  orders
CREATE TABLE orders(
    idOrder VARCHAR(10),
    idCustomer VARCHAR(10),
    ngayDat DATETIME,
    CONSTRAINT pk_order PRIMARY key (idOrder),
    CONSTRAINT fk_customers FOREIGN KEY (idCustomer) REFERENCES customers(idCustomer)
)
INSERT into orders VALUES ('ma_1','khach_1','2021-06-21'),
                        ('ma_2','khach_1','2021-06-21'),
                        ('ma_3','khach_2','2021-06-21'),
                        ('ma_4','khach_3','2021-06-21'),
                        ('ma_5','khach_3','2021-06-21'),
                        ('ma_6','khach_3','2021-06-21'),
                        ('ma_7','khach_4','2021-06-21'),
                        ('ma_8','khach_4','2021-06-21')
INSERT into orders(idOrder,idCustomer,ngayDat) VALUES ('ma_10','khach_1','2021-08-21')
SELECT * from orders
--    order detail   ---

CREATE TABLE orderDetail(
    idOrder VARCHAR(10),
    idProduct VARCHAR(10),
    So_Luong int,
    CONSTRAINT fk_orders FOREIGN KEY (idOrder) REFERENCES orders(idOrder),   
     CONSTRAINT fk_products FOREIGN KEY (idProduct) REFERENCES products(idProduct)
)
INSERT into orderDetail VALUES ('ma_1','SanPham_4','3'),
                                ('ma_1','SanPham_2','1'),
                                ('ma_1','SanPham_1','2'),
                                ('ma_2','SanPham_3','3'),
                                ('ma_2','SanPham_5','5'),
                                ('ma_2','SanPham_2','6'),
                                ('ma_3','SanPham_1','2'),
                                ('ma_3','SanPham_2','1'),
                                ('ma_3','SanPham_3','3'),
                                ('ma_4','SanPham_5','2'),
                                ('ma_4','SanPham_4','1'),
                                ('ma_5','SanPham_1','7'),
                                ('ma_5','SanPham_2','1'),
                                ('ma_6','SanPham_1','3'),
                                ('ma_6','SanPham_4','4'),
                                ('ma_6','SanPham_3','6'),
                                ('ma_7','SanPham_5','1'),
                                ('ma_7','SanPham_1','2'),
                                ('ma_8','SanPham_2','4'),
                                ('ma_8','SanPham_4','2')

-- 4 ----
select customers.nameCustomer from orders inner JOIN customers
on customers.idCustomer =orders.idCustomer inner join orderDetail
on orders.idOrder = orderDetail.idOrder
group by customers.nameCustomer


SELECT * from products

select orders.idOrder, orderDetail.idProduct from orders inner JOIN orderDetail
on orderDetail.idOrder = orders.idOrder
--  5   -----

SELECT nameCustomer from customers
order by nameCustomer

select * from products
ORDER by  price desc

select customers.nameCustomer, products.nameProduct, orderDetail.So_Luong, COUNT(*) from orders inner JOIN customers
on orders.idCustomer = customers.idCustomer inner join orderDetail
on orders.idOrder = orderDetail.idOrder INNER JOIN products
ON products.idProduct = orderDetail.idProduct
where customers.nameCustomer = N'Vũ Trường Sơn'
GROUP by customers.nameCustomer, products.nameProduct, orderDetail.So_Luong

--  6  --
SELECT orders.idCustomer from orders inner JOIN orderDetail
on orders.idOrder = orderDetail.idOrder
GROUP by orders.idCustomer

select orderDetail.idProduct, products.nameProduct, products.description, products.price from orderDetail inner join products
on orderDetail.idProduct = products.idProduct 
GROUP by orderDetail.idProduct, products.nameProduct, products.description, products.price

SELECT orderDetail.idOrder, SUM(orderDetail.So_Luong * products.price) as total_price_order from orderDetail INNER join products
on orderDetail.idProduct = products.idProduct 
GROUP by orderDetail.idOrder

--- 7   ---

alter TABLE products 
add check (price > 0)

alter TABLE orders
add check (ngayDat < getdate())

alter TABLE orders 
add ngay_ra_mat DATETIME DEFAULT '2021-10-01'

ALTER TABLE orders
drop constraint DF__orders__ngay_ra___6383C8BA

ALTER TABLE orders
drop constraint ck_nrm

ALTER TABLE orders
add CONSTRAINT ck_nrm default '2021-10-20' for  ngay_ra_mat 
SELECT * FROM orders 




