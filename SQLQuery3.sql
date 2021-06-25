CREATE DATABASE MUASAM

USE MUASAM

CREATE TABLE Contacts
(MailID varchar(20),
Name Ntext,
Telephonenumber INT)

ALTER TABLE Contacts ADD Address NVARCHAR(50)

INSERT INTO Contacts values('longvu@gmail.com' ,N'Trần Long Vũ',0982179102 , N'Hải Phòng')
INSERT INTO Contacts values('truongson@gmail.com' ,N'Vũ Trường Sơn',0982179102 , N'Hải Phòng')
INSERT INTO Contacts values('thuylinh@gmail.com' ,N'Vũ Thùy Linh',0982179102 , N'Hải Phòng')
INSERT INTO Contacts values('nhatnguyen@gmail.com' ,N'Nguyễn Văn Nhật',0982179102 , N'Hà Nội')

SELECT * FROM Contacts

DELETE FROM Contacts WHERE MailID='nhatnguyen@gmail.com'

UPDATE Contacts SET Name=N'Lương Thanh Long' WHERE MailID='nhatnguyen@gmail.com'