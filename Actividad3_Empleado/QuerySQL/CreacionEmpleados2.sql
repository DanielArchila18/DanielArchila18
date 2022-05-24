/*Creacion base de datos*/
create database empleados;

/*Usar base de datos*/
use empleados;

/*Creacion de tablas*/


/*Departamento*/
create table Departamentos(
id int not null auto_increment primary key,
departamento_codigo int not null,
nombre_departamento varchar (50) not null,
fecha_hora_crea timestamp default current_timestamp,
fecha_hora_modifica timestamp default current_timestamp
);

/*Empleado*/
create table Empleados(
id int not null auto_increment primary key,
tipo_documento ENUM('RC', 'TI', 'CC', 'CE') not null,
numero_documento bigint not null,
nombres varchar(50) not null,
apellidos varchar(50) not null,
departamento_id int not null,
foreign key (departamento_id) references Departamentos(id),
direccion varchar (100) not null,
correo_electronico varchar(100) not null,
telefono bigint not null,
fecha_hora_crea timestamp default current_timestamp,
fecha_hora_modifica timestamp default current_timestamp
);



alter table Departamentos auto_increment=1;
alter table Empleados auto_increment=1;

drop database empleados;