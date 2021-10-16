create table Users
(
	UserID int IDENTITY(1,1) PRIMARY KEY,
	UserName varchar(100) NOT NULL,
	FirstName varchar(100) NOT NULL,
	LastName varchar(100) NOT NULL,
	Password varchar(100),
	Active bit NOT NULL DEFAULT 1
)

insert into Users
(UserName, FirstName, LastName, Password, Active)
values ('jperez', 'Juan', 'Perez', 'dkes76876y98k2', 1)

insert into Users (UserName, FirstName, LastName)
values ('plopez', 'Pedro', 'Lopez')

select * from Users

alter table Users add DOB datetime not null

alter table Users drop column DOB

