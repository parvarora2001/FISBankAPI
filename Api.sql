create database UnionBank

use UnionBank

create table Account(
UserName varchar(30) NOT NULL ,
Password varchar(40) , 
CustomerName varchar(50) , 
CustomerAddress varchar(50) ,
CurrentBalance decimal ,
Email varchar(30) , 
City varchar(20), 
PhoneNumber int ,
CardNumber int , 
PinNumber int ,
AccountType varchar(30),
BlockStatus bit , 
AccountNumber int PRIMARY KEY ,
ApproveStatus bit
)
select * from Account
create table Transactions
(
TransactionId int,
TransactionDate datetime,
UserName varchar(30),
Amount float,
TransactionType varchar(20)
)
alter table Transactions add AccountNumber int references Account(AccountNumber);

drop table Transactions
select * from Transactions

create table UserDatatable
(
UserName varchar(30),
Password varchar(30),
AccountNum int,
BlockStatus	bit
)




