create database duan;

use duan;

create table Categories(
	Id int not null primary key auto_increment,
	Name nvarchar(50) not null,
	NameVN varchar(255) not null
);
create table Products(
	Id int not null primary key auto_increment,
	Name nvarchar(60) not null,
	UnitPrice float not null,
	Image nvarchar(50) not null,
	ProductDate datetime not null,
	Available bit not null,
	CategoryId int not null,
	Quantity int not null,
	Description varchar(4000) ,
	Discount float not null,
	ViewCount int not null,
	Special bit not null
);

create table Users(
	Id nvarchar(20) not null primary key,
	Password nvarchar(50) not null,
	Fullname nvarchar(50) not null,
	Telephone int not null,
	Email nvarchar(50) not null,
	Photo nvarchar(50) not null,
	Activated bool not null,
	Admin bool not null
);

create table Orders(
	Id int not null primary key auto_increment,
	UserId nvarchar(20) not null,
	OrderDate datetime not null,
	Telephone int not null,
	Address nvarchar(60) not null,
	Amount float not null,
	Description nvarchar(1000),
	Status int
);

create table OrderDetails(
	Id int not null primary key auto_increment,
	OrderId int not null,
	ProductId int not null,
	UnitPrice float not null,
	Quantity int not null,
	Discount float not null
);




insert into Categories(name, namevn)
values  (N'Điện thoại','OPPO'),
		(N'Điện thoại','SAMSUNG'),
		(N'Điện thoại','APPLE'),
		(N'Điện thoại','XIAOMI'),
		(N'Điện thoại','HUAWEI'),
		(N'Điện thoại','MASTEL'),
		(N'Điện thoại','LENOVO'),
		(N'Điện thoại','ASUS'),
		(N'Điện thoại','NOKIA'),
		(N'Điện thoại','REDMI');


insert into Products(Name, UnitPrice, Image, ProductDate, Available, CategoryId, Quantity, Description, Discount, ViewCount, Special)
values  ('IPhone 12 Pro Max',33990000,'ip12_pro_max.png','2022/03/01',1,'3','50','iphone','0.5','1000',0);


insert into Users
values (1,'123456',N'Nguyễn Thành Luận','0543838193','thanhluanxhxh2000@gmail.com','luan.jpg','1','1'),
		(2,'123456',N'Nguyễn Thành Hưng','0352616273','thanhluan2000@gmail.com','luan.jpg','1','0')
