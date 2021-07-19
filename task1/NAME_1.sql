create database save_products

use save_products

--  staff  --

create table staffs(
    idStaff varchar(10) primary key,
    nameStaff varchar(30)
)

insert into staffs values ('nv_1','Vu Truong Son'),
                            ('nv_2','Tran Long Vu'),
                            ('nv_3','Nguyen Van Nhat'),
                            ('nv_4','Nguyen Ngoc Truong An')
-- products  --

create table products (
    idProduct varchar(10) primary key,
    nameProduct varchar(20),
    ngay_sanXuat datetime,
    MaLoai varchar(10)
)
insert into products values ('sp_1','macbook', '2021-06-20','laptop'),
                            ('sp_2','asus', '2021-06-20','laptop'),
                            ('sp_3','Hp', '2021-06-20','laptop'),
                            ('sp_4','dell', '2021-06-20','laptop'),
                            ('sp_5','acer', '2021-06-20','laptop'),
                            ('sp_6','mazda', '2021-06-20','car'),
                            ('sp_7','mercedes', '2021-06-20','car'),
                            ('sp_8','bmw', '2021-06-20','car'),
                            ('sp_9','vinfast', '2021-06-20','car'),
                            ('sp_10','huyndai', '2021-06-20','car'),
                            ('sp_11','iphone', '2021-06-20','smartphone'),
                            ('sp_12','samsung', '2021-06-20','smartphone'),
                            ('sp_13','oppo', '2021-06-20','smartphone'),
                            ('sp_14','xiaomi', '2021-06-20','smartphone'),
                            ('sp_15','Buell', '2021-06-20','moto'),
                            ('sp_16','yamaha', '2021-06-20','moto'),
                            ('sp_17','honda', '2021-06-20','moto'),
                            ('sp_18','kawasaki', '2021-06-20','moto')


--  Phieu_sanPham  --

create table Phieu_sanPhams(
    idPhieu varchar (10) primary key,
    idStaff varchar(10) foreign key references staffs(idStaff),
    idProduct varchar(10) foreign key references products(idProduct)
)

insert into Phieu_sanPhams values ('phieu_1','nv_1','sp_1'),
                                  ('phieu_2','nv_1','sp_3'),
                                  ('phieu_3','nv_1','sp_5'),
                                  ('phieu_4','nv_1','sp_7'),
                                  ('phieu_5','nv_1','sp_9'),
                                  ('phieu_6','nv_2','sp_2'),
                                  ('phieu_7','nv_2','sp_4'),
                                  ('phieu_8','nv_2','sp_6'),
                                  ('phieu_9','nv_2','sp_8'),
                                  ('phieu_10','nv_2','sp_10'),
                                  ('phieu_11','nv_3','sp_11'),
                                  ('phieu_12','nv_3','sp_13'),
                                  ('phieu_13','nv_3','sp_15'),
                                  ('phieu_14','nv_3','sp_17'),
                                  ('phieu_15','nv_4','sp_12'),
                                  ('phieu_16','nv_4','sp_14'),
                                  ('phieu_17','nv_4','sp_16'),
                                  ('phieu_18','nv_4','sp_18')

--  4  ---

select MaLoai from products 
GROUP by MaLoai

select * from products

SELECT * from staffs

-- 5  ---

SELECT * from products
order by (nameProduct) 

SELECT * from products
where MaLoai = 'laptop'

select staffs.nameStaff, products.nameProduct from products inner join Phieu_sanPhams
on products.idProduct = Phieu_sanPhams.idProduct inner join staffs
on staffs.idStaff = Phieu_sanPhams.idStaff
where staffs.nameStaff = 'Tran Long Vu'
order by products.idProduct desc


select MaLoai, count(*) from products
group by MaLoai


                                  


