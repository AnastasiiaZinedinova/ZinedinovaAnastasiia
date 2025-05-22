create database DZ271;
use DZ271;
create table Car_brands (
id int auto_increment not null unique primary key,
Title varchar(10));
insert into Car_brands (Title)
values ("Audi"),
("BMW"),
("Ford"),
("Porsche"),
("Fiat");

create table Car_models (
id int auto_increment not null unique primary key,
Title varchar(10),
Car_brandsID int,
foreign key (Car_brandsID) references Car_brands(id));
insert into Car_models (Car_brandsID, Title)
values (1, "A6"),
(2,"X5"),
(3,"Focus"),
(4,"Cayenne"),
(5,"Palio");

create table users (
id int auto_increment not null unique primary key,
FirstName varchar(20),
LastName varchar (20),
Email varchar (20),
Password varchar (10));

insert into users (FirstName, LastName, Email, Password)
values ("Irina", "Mazurenko", "mazur@gmail.com", 123456),
("Victoriia", "Parchomchyk", "parch@gmail.com", 654321);

create table Cars (
id int auto_increment not null unique primary key,
Car_brandsID int,
Car_modelsID int,
usersID int,
Mileage varchar(1000),
InitialMileage varchar(1000),
foreign key (Car_brandsID) references Car_brands(id),
foreign key (Car_modelsID) references Car_models(id),
foreign key (usersID) references users(id));
insert into Cars (Car_brandsID, Car_modelsID, usersID, Mileage, InitialMileage)
values (1, 1, 1, 150, 15),
(2, 2, 2, 250, 15);