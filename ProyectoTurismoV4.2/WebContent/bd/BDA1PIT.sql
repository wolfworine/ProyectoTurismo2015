drop database if exists BD_Calidad_Pit;
create database BD_Calidad_Pit;

use BD_Calidad_Pit;

DROP TABLE IF EXISTS tb_usuario;
CREATE TABLE tb_usuario(
  CUE_USU varchar(15) NOT NULL,
  CON_USU varchar(15) NOT NULL,
  ULT_FEC_ACC_USU DATE NULL,
  PRIMARY KEY  (CUE_USU)
);


create table tb_Empleado(
id_emp char(5) ,
Nom_emp varchar(70) not null,
ApePat_emp varchar(70) not null,
ApeMat_emp varchar(70) not null,
Dir_emp varchar(70) not null,
Sexo_emp char(1) not null check(Sexo_emp='M' or Sexo_emp='F'),
Dni_emp char(8) not null,
Cargo_emp varchar(50) not null check(Cargo_emp='Administrador' or Cargo_emp='Empleado'),
Estado_emp Integer not null check(Estado_emp=0 or Estado_emp=1) ,
FecNac_emp date not null,
FecIng_emp date not null,
Pass_emp varchar(23) not null,
Email_emp varchar(50) not null
);

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

alter table tb_Empleado
	add primary key (id_emp);

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





