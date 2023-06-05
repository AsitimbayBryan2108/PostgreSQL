
CREATE TABLE lector(
     id_lector serial NOT NULL,
	 cedula character varying(13) not null,
	 nombres character varying(30) not null,
	 direccion character varying(255) not null,
	 telefono character varying(10) not null,
	 email character varying not null,
	 CONSTRAINT pk_idlector PRIMARY KEY (id_lector)
);
create table editorial(
    id_editorial serial not null,
	razon_social character varying(30) not null,
	direccion character varying(255) not null,
	telefono character varying(10) not null,
    CONSTRAINT pk_ideditorial PRIMARY KEY (id_editorial)
);

create table libro(
	id_libro serial not null,
	titulo character varying(50) not null,
	isbn character varying(20) not null,
	fecha_publicacion date not null,
	cod_editorial integer not null,
	cod_estado integer not null,
	cod_autor integer not null,
	CONSTRAINT pk_idlibro PRIMARY KEY (id_libro),
	CONSTRAINT fk_editorial FOREIGN KEY (cod_editorial) REFERENCES editorial(id_editorial),
	CONSTRAINT fk_estado FOREIGN KEY (cod_estado) REFERENCES estado(id_estado),
	CONSTRAINT fk_autor FOREIGN KEY (cod_autor) REFERENCES autor(id_autor)
);
select * from libro

select * from editorial

INSERT INTO EDITORIAL (RAZON_SOCIAL,DIRECCION,TELEFONO)
VALUES ('LNS','AVDA JUAN TANCA MARENGO','2456789');
INSERT INTO EDITORIAL (RAZON_SOCIAL,DIRECCION,TELEFONO)
VALUES ('PRENTICE HALL','AVDA LAS AGUAS','2123456');
INSERT INTO EDITORIAL (RAZON_SOCIAL,DIRECCION,TELEFONO)
VALUES ('ALIANZA','URDESA','2098765');

DELETE FROM EDITORIAL WHERE ID_EDITORIAL=3 

create table estado(
    id_estado serial not null,
	descripcion character varying(10) not null,
    CONSTRAINT pk_idestado PRIMARY KEY (id_estado)
);

create table autor(
    id_autor serial not null,
	nombre character varying(60) not null,
    CONSTRAINT pk_idautor PRIMARY KEY (id_autor)
);

create table cargo(
    id_cargo serial not null,
	descripcion character varying(60) not null,
    CONSTRAINT pk_idcargo PRIMARY KEY (id_cargo)
);

CREATE TABLE empleado(
     id_empleado serial NOT NULL,
	 cedula character varying(13) not null,
	 nombres character varying(30) not null,
	 direccion character varying(255) not null,
	 telefono character varying(10) not null,
	 email character varying not null,
	 edad integer not null,
	 sexo character varying(10) not null,
	 cod_cargo integer not null,
	 CONSTRAINT pk_idempleado PRIMARY KEY (id_empleado),
	 CONSTRAINT fk_idcargo FOREIGN KEY (cod_cargo) REFERENCES cargo(id_cargo)
);

INSERT INTO estado (descripcion) VALUES ('Prestado');
INSERT INTO estado (descripcion) VALUES ('Ocupado');

select * from estado

INSERT INTO autor (nombre) VALUES ('Kendall & Kendall');

select * from autor

INSERT INTO libro (titulo,isbn,fecha_publicacion, cod_editorial,cod_estado,cod_autor) 
VALUES ('Análisis y Diseño','1234-5678','01-01-2022', 1, 2, 1);

select * from libro