/*Registrar datos*/

/*Departamentos*/
insert into Departamentos(departamento_codigo,nombre_departamento) values ('RH','Recursos Humanos');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('CON','Contabilidad');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('ADM','Administracion');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('MAY','Mesa de ayuda');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('IT','Dep de IT');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('VEN','Ventas');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('TRA','Transporte');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('INV','Inventario');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('ATC','Atencion al cliente');
insert into Departamentos(departamento_codigo,nombre_departamento) values ('GRC','Gerencia');

select * from Departamentos;



/*Empleados*/
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '1025634789', 'Luis Alberto', 'Ramirez Parra','1','Calle 72 # 13-28','laramirezp@gmail.com', '3105596874');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '6547896312', 'Dana Lucia', 'Suarez Sanchez','3','Carrera 87 # 65 - 98','dsanchezp@gmail.com', '3156987456');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CE', '1365479621', 'Juan Antonio', 'Sanchez','6','Calle 96 # 65 - 5','jsanchez@gmail.com', '3187463210');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('TI', '9587463214', 'Laura Sofia', 'Aldana','4','Calle 78 # 63-79','laldanap@gmail.com', '3196587463');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '1698547632', 'Paula', 'Suarez','3','Carrera 72 R # 42 Sur-56','psuarez@gmail.com', '3123654784');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '1547863214', 'Daniel', 'Antolinez','6','Calle 96 # 13-85','dantolinez@gmail.com', '3196547863');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '1654723694', 'Ramon', 'Valdes','7','Calle 18 # 30-15','rvaldes@gmail.com', '3187456321');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CE', '1589647532', 'Luis', 'Diaz','8','Calle 78 # 36-63','ldiaz@gmail.com', '3156321479');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CC', '1968746322', 'Rafael', 'Santos','3','Calle 35 # 16-14','rsantos@gmail.com', '3178546321');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('CE', '3256487612', 'Maria', 'Osorio','7','Calle 96 # 72-12','mosorio@gmail.com', '3186541236');
insert into Empleados(tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values('RC', '1587463295', 'Luisa', 'Pereira','5','Calle 72 # 13-28','lpereira@gmail.com', '3187459813');

select * from Empleados;

UPDATE  Empleados SET tipo_documento='TI' where id=1;