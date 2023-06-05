CREATE TABLE empleado (
id_empleado serial NOT NULL,
cedula character varying (13) not null,
nombre character varying (30) not null,
edad character varying (10) not null,
sexo character varying (10) not null,
salario character varying not null,
CONSTRAINT pk_idempleado PRIMARY KEY (id_empleado)
);

INSERT INTO empleado(id_empleado, cedula, nombre, edad, sexo, salario) 
VALUES ('1', '123456789', 'KEYLA','21', 'MUJER', '450');
INSERT INTO empleado(id_empleado, cedula, nombre, edad, sexo, salario) 
VALUES ('2', '123535559', 'JUAN','21', 'HOMBRE', '450');

CREATE TABLE cliente (
 id_cliente serial NOT NULL,
cedula character varying (13) not null,
 nombre character varying (30) not null,
direccion character varying (255) not null,
telefono character varying (10) not null,
 email character varying not null,
 edad character varying (10) not null,
sexo character varying (10) not null,
CONSTRAINT pk_idcliente PRIMARY KEY (id_cliente)
);

INSERT INTO cliente(id_cliente, cedula, nombre, direccion, telefono, email,edad,sexo) 
VALUES ('1', '126656789', 'BRYAN','AV 25 DE JULIO', '0968252615', 'asitimbaybryan@gmail.com','19','HOMBRE');
INSERT INTO cliente(id_cliente, cedula, nombre, direccion, telefono, email,edad,sexo) 
VALUES ('2', '123556789', 'SHIRLEY','AV 25 DE JULIO', '092522615', 'shirley@gmail.com','19','MUJER');

CREATE TABLE vehiculo (
id_vehiculo serial NOT NULL,
marca character varying (15) not null,
modelo character varying (23) not null,
color character varying (10) not null,
matricula integer not null,
anho integer not null,
CONSTRAINT pk_idvehiculo PRIMARY KEY (id_vehiculo)
);
INSERT INTO vehiculo(id_vehiculo, marca, modelo, color, matricula, anho) 
VALUES ('1', 'SUZUKI', 'M23','BLANCO', '499', '2020');
INSERT INTO vehiculo(id_vehiculo, marca, modelo, color, matricula, anho) 
VALUES ('2', 'CHEVROLET', 'L21','NEGR0', '495', '2022');
INSERT INTO vehiculo(id_vehiculo, marca, modelo, color, matricula, anho) 
VALUES ('3', 'MAZDA', 'M25','AZUL', '429', '2010');

CREATE TABLE alquiler (
 id_alquiler serial NOT NULL,
 cod_vehiculo integer not null,
 cod_cliente integer not null,
 cod_empleado integer not null,
fecha date not null,
 hora character varying not null,
precio_base character varying not null,
CONSTRAINT pk_idalquiler PRIMARY KEY (id_alquiler),
 CONSTRAINT fk_vehiculo FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo (id_vehiculo),
 CONSTRAINT fk_cliente FOREIGN KEY (cod_cliente) REFERENCES cliente (id_cliente),
 CONSTRAINT fk_empleado FOREIGN KEY (cod_empleado) REFERENCES empleado (id_empleado)
);

INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado, fecha, hora, precio_base) 
VALUES ('1', '1', '1', CURRENT_DATE, '10:05', '234.43');
DELET alquiler

SELECT * FROM alquiler

SELECT AGE(a.fecha, TIMESTAMP '01-01-1900') FROM alquiler a;


INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado,fecha, hora, precio_base) 
VALUES ('1', '1', '1', '11/03/2022', CURRENT_TIME, '1244');


INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado,fecha, hora, precio_base)
VALUES ('1', '1', '1', '10/01/2025', CURRENT_TIMESTAMP, '1112');

SELECT DATE_PART('century', a.fecha) FROM alquiler a;

INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado, fecha, hora, precio_base) 
VALUES ('1', '1', '1', DATE_TRUNC('year', CURRENT_DATE), CURRENT_TIMESTAMP, '4526.35');

SELECT EXTRACT(DAY FROM a.fecha) FROM alquiler a;

SELECT ISFINITE(a.fecha) FROM alquiler a;

SELECT JUSTIFY_DAYS('120 days') AS mes;

INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado, fecha, hora, precio_base) 
VALUES ('1', '1', '1', DATE_TRUNC('year', CURRENT_DATE), JUSTIFY_HOURS('42240'), '12544');

SELECT JUSTIFY_INTERVAL(AGE(a.fecha)) FROM alquiler a;

INSERT INTO alquiler(cod_vehiculo, cod_cliente, cod_empleado,fecha, hora, precio_base) 
VALUES ('1', '1', '2', DATE_TRUNC('year', CURRENT_DATE), LOCALTIME, '444.35');

SELECT LOCALTIMESTAMP FROM vehiculo;

SELECT NOW() FROM vehiculo;

SELECT STATEMENT_TIMESTAMP() FROM empleado;

SELECT TIMEOFDAY() FROM cliente;

SELECT TO_TIMESTAMP(1284352323);