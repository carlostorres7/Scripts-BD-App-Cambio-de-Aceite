show databases;

use registro_cambios_aceite;

show tables;

create table clientes(
    id int auto_increment primary key,
    nombre_uno varchar(100) not null,
    nombre_dos varchar(100),
    apellido_uno varchar(100) not null,
    apellido_dos varchar(100),
    telefono varchar(100) not null,
    email varchar(100)
);

create table aceites(
    id int auto_increment primary key,
    marca varchar(100) not null,
    referencia varchar(100) not null,
    categoria varchar(50) not null
);

create table motocicletas(
    id int auto_increment primary key,
    placa varchar(100) not null,
    marca varchar(100) not null,
    referencia varchar(100) not null,
    cliente_id int,
    foreign key (cliente_id) references clientes(id)
);

create table cambios_aceites(
    id int auto_increment primary key,
    motocicleta_id int,
    fecha datetime default current_timestamp,
    tipo_aceite_id int,
    kilometraje int not null,
    observaciones text,
    foreign key (motocicleta_id) references motocicletas(id),
    foreign key (tipo_aceite_id) references aceites(id)
);