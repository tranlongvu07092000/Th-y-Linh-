create database LongVu07092000
Go
use LongVu07092000
Go
CREATE TABLE PhongBan(
    MaPb VARCHAR(7),
    TenPb NVARCHAR(50),
    CONSTRAINT pk_Phongban PRIMARY KEY (MaPb)
)
INSERT INTO PhongBan values ('phong_1',N'Trời Xanh')
INSERT INTO PhongBan values ('phong_2',N'Mây Trắng')
INSERT INTO PhongBan values ('phong_3',N'Nắng Vàng')
INSERT INTO PhongBan values ('phong_4',N'Biển Bạc')
INSERT INTO PhongBan values ('phong_5',N'Thời Gian')
--table NhanVien

create TABLE NhanVien(
    MaNv VARCHAR(7),
    TenNv NVARCHAR(50),
    NgaySinh DATETIME check(NgaySinh < getdate()),
    SoCMND char(9) check(SoCMND > 0 ),
    GioiTinh char(1) CHECK(GioiTinh = 'M' or GioiTinh = 'F') default 'M',
    DiaChi NVARCHAR(100),
    NgayVaoLam DATETIME ,
    MaPb VARCHAR (7),
    CONSTRAINT pk_NhanVien PRIMARY KEY (MaNv),
    CONSTRAINT fk_PhongBan FOREIGN key (MaPb) references Phongban(MaPb),
    constraint ck_NhanVien CHECK(year(NgayVaoLam) >= year (NgaySinh) + 20)
)
INSERT INTO  NhanVien VALUES('NV_1', N'Long Vũ','2000-07-09','03126133','m',N'Hải Phòng','2021-07-01','phong_4')
INSERT INTO  NhanVien VALUES('NV_2', N'Trường Sơn','2000-08-30','03120012','m',N'Hải Phòng','2021-07-01','phong_5')
INSERT INTO NhanVien VALUES('NV_3', N'Trường An','2000-12-05','03120088','m',N'Hà Nội','2021-07-01','phong_1')
INSERT INTO  NhanVien VALUES('NV_4', N'Thùy Linh','2000-1606','03120041','m',N'Hải Phòng','2021-07-01','phong_2')
INSERT INTO  NhanVien VALUES('NV_5', N'Văn Nhật','2000-08-30','03122563','m',N'Hà Nội','2021-07-01','phong_3')

--end table NhanVienc

--table LuongDA
CREATE table LuongDA(
    MaDa VARCHAR(8),
    MaNv varchar(7),
    NgayNhan DATETIME not null default getdate(),
    Sotien Money CHECK(Sotien > 0),
    CONSTRAINT fk_NhanVien foreign key (MaNv) REFERENCES NhanVien(MaNv),
    CONSTRAINT pk_LuongDa primary key (MaDa, MaNv)
)
insert into LuongDA VALUES ('DA_1','NV_1','2021-07-01','100000')
insert into LuongDA VALUES ('DA_2','NV_2','2021-07-01','100000')
insert into LuongDA VALUES ('DA_3','NV_1','2021-07-01','100000')
insert into LuongDA VALUES ('DA_4','NV_4','2021-07-01','100000')
insert into LuongDA VALUES ('DA_5','NV_3','2021-07-01','100000')

-- end Table LuongDa



SELECT * FROM Phongban
SELECT * FROM NhanVien
SELECT * FROM LuongDa
WHERE  GioiTinh = 'F'
SELECT count(Manv) FROM LuongDa


SELECT  sum(Sotien) AS total_LuongNV_1 FROM  LuongDa
WHERE MaNv = 'nv_1'
SELECT  sum(Sotien) AS total_LuongNV_2 FROM  LuongDa
WHERE MaNv = 'nv_2'
SELECT  sum(Sotien) AS total_LuongNV_3 FROM  LuongDa
WHERE MaNv = 'nv_3'
SELECT  sum(Sotien) AS total_LuongNV_4 FROM  LuongDa
WHERE MaNv = 'nv_4'
SELECT  sum(Sotien) AS total_LuongNV_5 FROM  LuongDa
WHERE MaNv = 'nv_5'

select Phongban.MaPb, NhanVien.MaNv, NhanVien.TenNv from Phongban inner join NhanVien
on Phongban.MaPb  = NhanVien.MaPb 
ORDER by Phongban.MaPb


select  SUM(LuongDa.Sotien) 
from NhanVien INNER join LuongDa
on NhanVien.MaNv = LuongDa.MaNv

select Phongban.MaPb, Phongban.TenPb,  sum(NhanVien.MaNv) from Phongban inner join NhanVien
on Phongban.MaPb = NhanVien.MaPb
GROUP by Phongban.MaPb, Phongban.TenPb

drop table test
CREATE table test(
    sinh datetime ,
    datess datetime,
   constraint ck_test check( YEAR(datess) > YEAR(sinh) + 15 )
)
INSERT test VALUES('2000-2-2','2016-2-2')
SELECT * from test 
select * from test where year(datess) = '2004'

