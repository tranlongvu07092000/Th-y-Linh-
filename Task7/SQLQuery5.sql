Create Database LongvuShop
go
Use LongvuShop
go
-- T?o b?ng khách hàng
CREATE TABLE KhachHang (
MaKH int ,
TenKH Nvarchar(50),
DiaChi Nvarchar(50),
SoDT bigint ,
TrangThai varchar(50),
CONSTRAINT PK_MaKH PRIMARY KEY (MaKH)
)
SELECT * FROM KhachHang;
INSERT INTO KhachHang VALUES (1,N'Tr?n Long Vu',N'H?i Phòng','0982179102','Good')
INSERT INTO KhachHang VALUES (2,N'Vu Tru?ng Son',N'H?i Phòng','0967522222','Bad')
INSERT INTO KhachHang VALUES (3,N'Nguy?n Van Nh?t',N'Hà N?i','0123456789','Nomal')
INSERT INTO KhachHang VALUES (4,N'Vu Thùy Linh',N'H?i Phòng','0351357171','Good')

-- T?o b?ng Ðon hàng
Create Table DonHang (
MaDH int ,
MaKH int ,
NgayDatHang datetime,
TrangThai varchar(20),
Constraint PK_MaDH PRIMARY KEY (MaDH),
CONSTRAINT FK_MaKH FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
)
SELECT * FROM DonHang;
INSERT INTO DonHang VALUES (12,1,'2021-06-12','Good')
INSERT INTO DonHang VALUES (22,2,'2021-03-21','Bad')
INSERT INTO DonHang VALUES (32,3,'2021-04-22','Nomal')
INSERT INTO DonHang VALUES (42,4,'2021-05-23','Good')
-- T?o B?ng S?n Ph?m

 CREATE TABLE SanPham (
 MaSP int not null,
 TenSP varchar(50),
 MoTaSP varchar(50),
 DonVi varchar(10),
 GiaTien money ,
 SoLuong int ,
 TrangThai varchar(20),
 CONSTRAINT PK_MaSP PRIMARY KEY (MaSP)
 )
 SELECT * FROM SanPham
 INSERT INTO SanPham VALUES (123,'Máy tính T450','Máy nh?p m?i','Chi?c','1000',1,'Good')
 INSERT INTO SanPham VALUES (234,'Ði?n Tho?i Nokia 5670','Ði?n tho?i dang hot','Chi?c','200',2,'Nomal')
 INSERT INTO SanPham VALUES (456,'Máy In SamSung 450','Máy in dang ?','Chi?c','100',1,'Bad')
-- T?o b?ng Chi Ti?t Ðon Hàng
CREATE TABLE ChiTietDonHang (
MaDH int ,
MaSP int ,
GiaTien money,
SoLuong int ,
CONSTRAINT FK_MaDH FOREIGN KEY (MaDH) REFERENCES DonHang(MaDH),
CONSTRAINT FK_MaSP FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
)

SELECT * FROM ChiTietDonHang
INSERT INTO ChiTietDonHang VALUES (12,123,'1000',1)
INSERT INTO ChiTietDonHang VALUES (22,234,'400',2)
INSERT INTO ChiTietDonHang VALUES (32,456,'100',1)
-- 4 A --
SELECT TenKH FROM KhachHang;
--4 b --
SELECT TenSP FROM SanPham;
-- 4 c --
SELECT MaDH FROM DonHang;

-- 5 A --
SELECT * FROM KhachHang ORDER BY TenKH ASC;
--5 B--
SELECT * FROM ChiTietDonHang ORDER BY GiaTien DESC;
--5 C--
SELECT DonHang.MaDH, KhachHang.TenKH, DonHang.NgayDatHang FROM DonHang, KhachHang WHERE DonHang.MaKH=KhachHang.MaKH;
-- 6 A--
SELECT COUNT(MaKH) FROM KhachHang;
-- 6 B --
SELECT COUNT(MaSP) FROM SanPham;
--6C--
SELECT COUNT(GiaTien) FROM SanPham WHERE MaSP = 12;
SELECT COUNT(GiaTien) FROM SanPham WHERE MaSP = 22;
SELECT COUNT(GiaTien) FROM SanPham WHERE MaSP = 32;
-- 7 A --
UPDATE SanPham SET GiaTien = '> 0';
--7B--
UPDATE DonHang SET NgayDatHang = GETDATE();
--7C--
ALTER TABLE SanPham ADD NgayXuatHien datetime;
--8 A--
CREATE UNIQUE INDEX SP_UNI ON SanPham (TenSP);
CREATE INDEX NDH_INDEX ON KhachHang (TenKH);
-- 8B --
-- View_KhachHang --
CREATE VIEW View_KhachHang AS SELECT * FROM KhachHang

SELECT * FROM View_KhachHang;

ALTER VIEW View_KhachHang AS
SELECT TenKH,DiaChi,SoDT From KhachHang;
-- View_SanPham--
CREATE VIEW View_SanPham As SELECT * FROM SanPham

SELECT * FROM View_SanPham;

ALTER VIEW View_SanPham AS
SELECT TenSP,GiaTien FROM SanPham;





	



