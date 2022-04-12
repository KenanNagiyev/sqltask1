CREATE DATABASE BuyyingSelling

CREATE TABLE Worker(
NameSurnameFather nvarchar(255),
PositionId int identity(1,1)PRIMARY KEY,
Salary int
)

INSERT INTO Worker
VALUES ('Kenan Nagiyev Kamran',500)
INSERT INTO Worker
VALUES ('Perviz Hesenov Ilkin',300)
INSERT INTO Worker
VALUES ('Huseynov Revan Anar',700)

CREATE TABLE Position(
[Name] nvarchar(100)
)

INSERT INTO Position
VALUES ('Satici')
INSERT INTO Position
VALUES ('Satici')
INSERT INTO Position
VALUES ('Satici')

CREATE TABLE Branch(
[Name] nvarchar (100)
)

INSERT INTO Branch
VALUES('Ecemi filiali')
INSERT INTO Branch
VALUES('20 Yanvar filiali')
INSERT INTO Branch
VALUES('Nesimi filiali')

CREATE TABLE Product(
[Name] nvarchar (100),
BuyingSalary FLOAT,
SellingSalary FLOAT
)

INSERT INTO Product
VALUES('Pesok',2,2.2)
INSERT INTO Product
VALUES('Sosiska',10,11)
INSERT INTO Product
VALUES('Baliq',8,8.5)

CREATE TABLE Selling(
ProductId int,
WorkerId int,
DT DATE
)

INSERT INTO Selling
VALUES(1,1,'2015-06-24')
INSERT INTO Selling
VALUES(2,2,'2015-06-24')
INSERT INTO Selling
VALUES(3,3,'2015-06-24')

SELECT * FROM Selling
INNER JOIN Product
ON
ProductId = Selling.ProductId
INNER JOIN Worker
ON
WorkerId = Selling.WorkerId

SELECT SUM(SellingSalary) FROM Selling
INNER JOIN Product
ON
ProductId = Selling.ProductId

SELECT COUNT(ProductId) FROM Selling
INNER JOIN Product
ON
ProductId = Selling.ProductId

SELECT COUNT(ProductId) FROM Selling
INNER JOIN Product
ON
WorkerId = 1
SELECT COUNT(ProductId) FROM Selling
INNER JOIN Product
ON
WorkerId = 2
SELECT COUNT(ProductId) FROM Selling
INNER JOIN Product
ON
WorkerId = 3





