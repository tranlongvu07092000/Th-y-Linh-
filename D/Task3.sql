CREATE DATABASE Assignment3
GO
USE Assignment3
GO
CREATE TABLE KhachHang (
MaKH int,
TenKH varchar(50),
DiaChi varchar(50),
SoCMND bigint,
SoThueBao bigint,
CONSTRAINT PK_MAKH PRIMARY KEY (MaKH)
)

INSERT INTO KhachHang VALUES (12,'Tran Long Vu','Hai Phong',667788,123456789),
							 (13,'TranTruong Giang','Ha Noi',778899,123456789),
							 (14,'Vu Truong Son','Bac Ninh',112233,654987321),
							 (15,'Vu Thuy Linh','Ha Noi',665544,321654987)
CREATE TABLE ThueBao(
SoThueBao bigint,
LoaiThueBao varchar(20),
NhaMang varchar(20),
CONSTRAINT PK_SOTHUEBAO PRIMARY KEY (SoThueBao)
)

INSERT INTO ThueBao VALUES (123456789,'Tra Truoc','VIETTEL'),
						   (654987321,'Tra Sau','VinaPhone'),
						   (321654987,'Tra Sau','MobilePhone')

CREATE TABLE ThongTinKH (
MaKH int,
SothueBao bigint,
NgayDangKi datetime,
CONSTRAINT FK_MAKH FOREIGN KEY (MaKH) REFERENCES KhachHang,
CONSTRAINT FK_SOTHUEBAO FOREIGN KEY(SoThueBao) REFERENCES ThueBao
)

INSERT INTO ThongTinKH VALUES (12,123456789,'2020-11-12'),
							  (14,654987321,'2021-03-21'),
							  (13,123456789,'2020-12-12'),
							  (15,321654987,'2021-04-05')

-- 4A -- 
SELECT * FROM KhachHang;
--4B--
SELECT * FROM ThueBao;
--5A--
SELECT * FROM KhachHang WHERE SoThueBao = 123456789;
--5B--
SELECT * FROM KhachHang WHERE SoCMND = 667788;
--5C--
SELECT * FROM ThongTinKH WHERE NgayDangKi ='2020-12-12';
--5D--
SELECT * FROM KhachHang WHERE DiaChi ='Ha Noi';
--6A--
SELECT COUNT(TenKH) FROM KhachHang;
--6b--
SELECT COUNT(SoThueBao) FROM ThueBao;
--6C--
SELECT * FROM Assignment3.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';
--7A--
ALTER TABLE ThongTinKH ALTER COLUMN NgayDangKi notnull;
--7B--
ALTER TABLE ThongTinKH ADD CONSTRAINT CK CHECK (NgayDangKi < '2021-07-16');

