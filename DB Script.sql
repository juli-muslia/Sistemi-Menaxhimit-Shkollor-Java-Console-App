Create database menaxhimshkolle;
use menaxhimshkolle;

create table admin(
id_admin int auto_increment not null,
username varchar(40) unique not null,
password_admin varchar (40) not null,
emri_admin varchar(40) not null,
mbiemri_admin varchar(40) not null,
tel_admin varchar (40) ,
statusi boolean not null,

primary key (id_admin)
);

Create table mesues (
id_mesues int auto_increment not null,
username varchar(40) unique not null,
password_mesues varchar(40) not null,
emri_mesues varchar (40) not null,
mbiemri_mesues varchar(40) not null,
lenda_mesues varchar (40) not null,
tel_mesues varchar (40),
statusi boolean not null,

primary key (id_mesues)

);

create table nxenes (
id_nxenes int auto_increment not null,
username varchar(40) unique not null,
password_nxenes varchar(40) not null,
emri_nxenes varchar(40) not null,
mbiemri_nxenes varchar(40) not null,
tel_nxenes varchar(40),
statusi boolean,

primary key (id_nxenes)

);

create table detyra_nxenes (
id_detyrat int auto_increment not null,
detyrat varchar (255) not null,
id_mesues int not null,
id_nxenes int not null,
data_detyrave date not null,

primary key (id_detyrat),
foreign key (id_mesues) references mesues(id_mesues),
foreign key (id_nxenes) references nxenes(id_nxenes)
)