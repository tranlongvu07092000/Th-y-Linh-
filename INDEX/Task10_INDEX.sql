CREATE DATABASE RiverPlate
go 
USE RiverPlate
go 

CREATE table Student(
StudentNo int not null,
StudentName nvarchar(50),
StudentAddress nvarchar(100),
PhoneNo bigint,
CONSTRAINT PK_STN PRIMARY KEY (StudentNo)
)

CREATE table Department (
DeptNo int ,
DeptName nvarchar(50),
ManagerName nvarchar(30),
CONSTRAINT PK_DEPTNO PRIMARY KEY (DeptNo)
)

Create table Assignment (
AssignmentNo int ,
Description nvarchar(100),
CONSTRAINT PK_ASSNO PRIMARY KEY (AssignmentNo)
)

CREATE Table Works_Assign (
JobID int ,
StudentNo int ,
AssignmentNo int,
TotalHours int,
JobDetails nvarchar(450),
CONSTRAINT PK_JOBID PRIMARY KEY (JobID),
CONSTRAINT FK_STDNO FOREIGN KEY (StudentNo) REFERENCES Student(StudentNo),
CONSTRAINT FK_ASSNO1 FOREIGN KEY (AssignmentNo) REFERENCES Assignment(AssignmentNo)
)

-- 1 
INSERT INTO Student VALUES (123,N'Cristiano Ronaldo','Funchal - Portugal',965441),
						   (234,N'Lionel Messi','Rosario - Argentina',321456),
						   (432,N'Paul Pogba',' Lagny-sur-Marne France',564789),
						   (221,N'NGolo Kanté','Paris - France',123456),
						   (233,N'Robert Lewandowski','Vác-sa-va - Ba Lan',666777)

SELECT * FROM Student;

INSERT INTO Department VALUES (666,'The Blue',N'NGolo Kanté'),
							  (777,'Juventus','Cristiano Ronaldo'),
							  (888,'Man UNT','Paul Pogba'),
							  (999,'Bayern Muchen','Robert Lewandowski'),
							  (222,'Barcenola','Messi')

SELECT * FROM Department;

INSERT INTO Assignment VALUES (365,'Biological Studies , learn about human development'),
							  (121,'Collect information about President Obama and previous US presidents'),
							  (789,'Search for a list of potential customers that Google is cooperating and developing'),
							  (555,'Study of physics and total solar eclipse'),
							  (985,'Explore the rich biodiversity of the amazon jungle')

SELECT * FROM Assignment;

INSERT INTO Works_Assign VALUES (01,123,365,8,'Find out how the ancestors of mankind and to this day the worlds population are, have been and are developing. Tell me more about your opinion about the world in the future about 100-200 years'),
								(02,234,121,8,'List of US presidents, The first black person to be the US president, The success that OBAMA has brought to the US'),
								(03,432,789,8,'What big brands are Google working with, What has Google brought to the world and how has it changed?'),
								(04,221,555,8,'The last total solar eclipse occurred and when , and where is the best view'),
								(05,233,985,8,'It is currently estimated how many types of organisms exist in the Amazon and which species are endangered. At the end of the article, measures to protect forests and rare and endangered species are given!')
SELECT * FROM Works_Assign;

-- 2
ALTER TABLE Works_Assign DROP CONSTRAINT FK_STDNO
ALTER TABLE Student DROP CONSTRAINT PK_STN
CREATE Clustered index IX_STNO ON Student(StudentNo)
-- 3
ALTER INDEX IX_STNO on Student REBUILD
-- 4

CREATE NONCLUSTERED INDEX IX_DEPT on Department(DeptNo)  include (DeptName,ManagerName)