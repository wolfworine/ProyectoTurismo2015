drop database if exists bd_calipit;
create database bd_calipit;

use bd_calipit;

DROP TABLE IF EXISTS tb_cargo;
CREATE TABLE  tb_cargo (
  COD_CAR varchar(2) NOT NULL,
  DES_CAR varchar(45) NOT NULL,
  PRIMARY KEY (COD_CAR)
);

DROP TABLE IF EXISTS tb_empleado;
CREATE TABLE tb_Empleado (
    cod_emp INTEGER(5) NOT NULL AUTO_INCREMENT,
    usu_emp CHAR(5) NOT NULL,
    nom_emp VARCHAR(30)NOT NULL,
    app_emp VARCHAR(30) NOT NULL,
    apm_emp VARCHAR(30) NOT NULL,
    est_emp VARCHAR(2) NOT NULL,
    dir_emp VARCHAR(70) NOT NULL,
    sex_emp CHAR(1) NOT NULL CHECK (sex_emp = 'M' OR sex_emp = 'F'),
    dni_emp CHAR(8) NOT NULL,
    cod_car VARCHAR(2) NOT NULL CHECK (cod_car = 'A1' OR Cargo_emp = 'E1'),
    fcn_emp DATE NOT NULL,
    fci_emp DATE NOT NULL,
    lab_emp VARCHAR(250),
    cla_emp VARCHAR(23) NOT NULL,
    mai_emp VARCHAR(50) NOT NULL,
    fot_emp LONGBLOB,
    PRIMARY KEY (cod_emp),
    KEY FK_empleado_cargo (cod_car),
    CONSTRAINT FK_CARGO FOREIGN KEY (cod_car)
        REFERENCES tb_cargo (cod_car)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO bd_calipit.tb_cargo VALUES ('A1', 'Administrador');
INSERT INTO bd_calipit.tb_cargo VALUES ('E1', 'Empleado');

INSERT INTO bd_calipit.tb_empleado
(cod_emp, usu_emp, nom_emp, app_emp,apm_emp, est_emp ,dir_emp , sex_emp, dni_emp,cod_car , fcn_emp, fci_emp,lab_emp ,cla_emp ,mai_emp ,fot_emp ) 
VALUES (1,'E0001', 'Juan','Perez','Valdivia','C1','Av. Siempre viva 321','M','12345678','A1','1986-03-25','2014-01-10',
'Labores: Gerencia y Mantenimiento del sistema, además de realizar labores administrativas','admin','ejperez@hotmail.com',null);
INSERT INTO bd_calipit.tb_empleado
(cod_emp, usu_emp, nom_emp, app_emp,apm_emp,est_emp ,dir_emp , sex_emp, dni_emp,cod_car , fcn_emp, fci_emp,lab_emp ,cla_emp ,mai_emp ,fot_emp ) 
VALUES (2,'E0002', 'Pedro','Roca','Paz','S1','Av. Frutales 1247','M','23456789','E1','1991-05-11','2014-08-08',
'Labores: Mantenimiento de Ofertas, garantizar la actualización de ofertas en el sistema, además de realizar labores administrativas','admin','eproca@hotmail.com',null);

create table tb_Cliente(
Id_cli char(5) not null,
Nom_cli varchar(70) not null,
ApePat_cli varchar(70) not null,
ApeMat_cli varchar(70) not null,
Dir_cli varchar(70) not null,
Sexo_cli char(1) not null check(Sexo_cli='M' or Sexo_cli='F'),
Dni_cli char(8) not null,
Estado_cli int not null check(Estado_cli=0 or Estado_cli =1),
FecNac_cli date not null,
Pass_cli varchar(23) not null,
Email_cli varchar(50) not null
);



create table tb_Paquetes_Turisticos(
Codigo_paq char(5) not null,
Id_Dest char(5) not null,
Desc_paq varchar(400) not null,
FecIng_paq date not null,
Estado_paq int not null check(Estado_paq=0 or Estado_paq=1),
FecLim_paq date not null check(FecLim_paq>FecIng_pag),
Stock_paq int not null,
Precio_paq double not null,
Cod_of char(5),
Tipo_paq varchar(20) not null check(Tipo_paq='Estandar' or Tipo_paq='Cruceros' or Tipo_paq='Aereo'),
Precio_paq_of double
);

create table tb_Ofertas(
Cod_of char(5) not null,
Desc_of varchar(400),
Duracion_of int not null,
Porcentaje_of int not null
);


/** Se mostrara ingresar oferta se mostrara: Desc_paq,Stock_paq,Tipo_paq,Desc_of,Precio_of,Duracion_of**/
create table tb_Oferta_de_paquete(
Cod_of char(5) not null,
Codigo_paq char(5) not null
);


create table tb_Reserva(
Id_cli char(5) not null,
Codigo_paq char(5) not null,
Fecha_rese date not null,
Codigo_Crese char(10) not null
);


create table tb_CodigosReserva(
Codigo_Crese char(10) not null,
Estado_Crese int not null check(Estado_Crese=0 or Estado_Crese=1),
Vigencia_Crese int not null,
FechaRealizada_Crese date
);

create table tb_Venta(
Codigo_vent char(5) not null,
Codigo_paq char(5) not null,
Desc_vent varchar(50),
Fec_vent date not null,
Id_cli char(5) not null
);

create table tb_Detalle_venta(
Codigo_vent char(5) not null,
Id_cli char(5) not null
);

create table tb_Destino(
Id_Dest char(5),
Desc_Dest varchar(20) not null check(Desc_Dest='Internacional' or Desc_Dest='Nacional')
);

create table tb_pais(
Id_pais char(1) not null,
Desc_pais varchar(50) not null,
Id_Dest char(5) not null
);

create table tb_localidad(
id_localidad char(1) not null,
id_pais char(1) not null,
Desc_departamento varchar(100) not null
);



alter table tb_Cliente
	add primary key (id_cli);

alter table tb_Paquetes_Turisticos
	add primary key (Codigo_paq);

alter table tb_Ofertas
	add primary key (Cod_of);

alter table tb_CodigosReserva
	add primary key (Codigo_Crese);

alter table tb_Destino
	add primary key (Id_Dest);

alter table tb_localidad 
	add primary key (id_localidad);

alter table tb_Venta
	add primary key (Codigo_vent);

alter table tb_pais
	add primary key (Id_pais);

alter table tb_Paquetes_Turisticos
	add foreign key (Id_Dest) references tb_Destino(Id_Dest);

alter table tb_Paquetes_Turisticos
	add foreign key (Cod_of) references tb_Ofertas(Cod_of);

alter table tb_Oferta_de_paquete
	add foreign key (Cod_of) references tb_Ofertas(Cod_of);

alter table tb_Oferta_de_paquete
	add foreign key (Codigo_paq) references tb_Paquetes_Turisticos(Codigo_paq);

alter table tb_Reserva
	add foreign key (id_cli) references tb_Cliente(id_cli);

alter table tb_Reserva 
	add foreign key (Codigo_paq) references tb_Paquetes_Turisticos(Codigo_paq);

alter table tb_Reserva
	add foreign key (Codigo_Crese) references tb_CodigosReserva(Codigo_Crese);

alter table tb_Venta
	add foreign key (Codigo_paq) references tb_Paquetes_Turisticos(Codigo_paq);

alter table tb_Venta
	add foreign key (Id_cli) references tb_Cliente(Id_cli);

alter table tb_Detalle_venta
	add foreign key (Codigo_vent) references tb_Venta(Codigo_Vent);

alter table tb_Detalle_venta
	add foreign key (Id_cli) references tb_Cliente(Id_cli);

alter table tb_pais
	add foreign key (Id_Dest) references Tb_Destino(Id_Dest);

alter table tb_localidad
	add foreign key (id_pais) references tb_pais(id_pais);





