/** Procedimientos **/

use bd_calpit;


delimiter $
create procedure sp_IngresarCliente(in codigo char(5), in nom varchar(70), in apePat varchar(70), in apeMat varchar(70),
									in direccion varchar(70),in sexo char(1), in dni char(8),
									in estado int,in nacimiento date,in pass varchar(23),
									in email varchar(50))
begin
	insert into tb_Cliente (Id_cli,Nom_cli,ApePat_cli,ApeMat_cli,Dir_cli,Sexo_cli,Dni_cli,Estado_cli,FecNac_cli,Pass_cli,Email_cli) 
					values(codigo,nom,apePat,apeMat,direccion,sexo,dni,estado,nacimiento,pass,email);
end $

delimiter $
create procedure sp_ActualizarCliente(in codigo char(5), in nom varchar(70), in apePat varchar(70), in apeMat varchar(70),
									in direccion varchar(70),in nacimiento date,
									in email varchar(50))
begin

	update tb_Cliente set Nom_cli=nom,ApePat_cli=apePat,ApeMat_cli=apeMat,Dir_cli=direccion,FecNac_cli=nacimiento,Email_cli=email
						where Id_cli=codigo;
end$

delimiter $
create procedure sp_CambiarPassCliente(in codigo char(5),in email varchar(50),in pass varchar(23))

begin

	update tb_Cliente set Pass_cli=pass where Email_cli=email and Id_cli=codigo;
end$

delimiter $
create procedure sp_DesabilitarCliente(in codigo char(5),in estado int)
begin

	update tb_Cliente set Estado_cli=estado where Id_cli=codigo;

end$

/** fin cliente**/


/** procedure paquete**/
delimiter $
create procedure sp_AgregarPaquete(in codigo char(5),in destino char(5),in descripcion varchar(400),in ingreso date,in estado int,in limite_fecha date,in stock int,
									in precio decimal,in Cod_oferta char(5),in tipo_paquete varchar(20),in Precio_of double)
begin
	insert into tb_Paquetes_Turisticos(Codigo_paq,Id_Dest,Desc_paq,FecIng_paq,Estado_paq,
										FecLim_paq,Stock_paq,Precio_paq,Cod_of,Tipo_paq,Precio_paq_of  )
			values(codigo,destino,descripcion,ingreso,estado,limite_fecha,stock,precio,Cod_oferta,tipo_paquete,Precio_of );
end$

delimiter $
create procedure sp_AgregarOfertaApaquete(in codigo char(5), in Cod_oferta char(5))

begin
select @porcentaje:= Porcentaje_of from tb_Ofertas where Cod_of=Cod_oferta;
set @porcentaje=@porcentaje/10;
select @precioPaq:= Precio_paq from tb_Paquetes_Turisticos where Codigo_paq=codigo;
set @precioPaq=@precioPaq-(@precioPaq/@porcentaje);
	update tb_Paquetes_Turisticos set Cod_of=Cod_oferta  where Codigo_paq=codigo;
	update tb_Paquetes_Turisticos set Precio_paq_of=@precioPaq where Codigo_paq=codigo;

end$

/** fin paquete**/

/** procedure oferta**/
delimiter $$
create procedure sp_AgregarOferta(in codigo char(5),in descripcion varchar(400),in duracion int,in descuento_porcentaje int)
begin
	insert into tb_Ofertas(Cod_of,Desc_of,Duracion_of,Porcentaje_of)
				values(codigo,descripcion,duracion,descuento_porcentaje);
end$$

delimiter $
create procedure sp_MostrarPaquetesOfertados()
begin
	select pt.Desc_paq,pt.Stock_paq,pt.Precio_paq_of,pt.FecLim_paq ,
			d.Desc_Dest from tb_Paquetes_Turisticos as pt join tb_Destino as d on pt.Id_Dest=d.Id_Dest
			join tb_Ofertas as o on pt.Cod_of=o.Cod_of;
	
end$
/** fin oferta**/

/** Registros **/
/** Registros Cliente**/

call sp_IngresarCliente('C0001','Cesar','Valenzuela','Perez','Av.Javier Prado #345','M',85468521,1,'1990-04-11','Cesar123','Cesar@hotmail.com');
call sp_IngresarCliente('C0002','Manuel','Napa','Garcia','Av.Los frutales #342','M',77548652,1,'1980-11-24','Manuel345','Manuel@hotmail.com');
call sp_IngresarCliente('C0003','Victor','Rabelo','Ramirez','Jr.Indepencia #145','M',12543689,1,'1952-01-01','Vic457','Victor@hotmail.com');
call sp_IngresarCliente('C0004','Caleb','Ramires','Ruiz','Av.Puerta #948','M',75463591,1,'1955-04-11','Caleb003','Ca@hotmail.com');
call sp_IngresarCliente('C0005','Fernando','Jumbo','Escalante','Calle frejol int5 #4','M',72187986,1,'1975-11-11','Fer007','Ferdinap@hotmail.com');
call sp_IngresarCliente('C0006','Edwin','Camayo','Barrios','Av.Girasol #6567','M',7654289,1,'1961-05-12','Ed845','Edwin@hotmail.com');
call sp_IngresarCliente('C0007','Diego','Beltran','Zegarra','Av.Expresa #1234','M',1546895,1,'1985-11-17','Dieg884','Diegin@hotmail.com');
call sp_IngresarCliente('C0008','Salvattore','Valderrama','Barrantes','Jr.Chavez #3413','M',6632564,1,'1975-01-08','Sal646','SalvitoMax@hotmail.com');
call sp_IngresarCliente('C0009','Luis','Seminario','Lopez','Jr.Matorales #152','M',77554268,1,'1988-07-16','Luis123','Luis@hotmail.com');
call sp_IngresarCliente('C0010','Alvaro','Elescano','Milla','Av.Javier Prado #751','M',32156482,1,'1957-04-06','Alvaro432','Alv3@hotmail.com');
call sp_IngresarCliente('C0011','Paul','Lozada','Centellas','Urb.Las manzanas #452','M',88545663,1,'1962-07-07','Paul984','Paul12@hotmail.com');
call sp_IngresarCliente('C0012','Mayra','Ayulo','Flores','jr.Tejas #153','F',77441125,1,'1981-12-07','May040','M034@hotmail.com');
call sp_IngresarCliente('C0013','Renzo','Villegas','Tello','Av.Universitaria #4532','M',66335859,1,'1977-10-11','Renzo323','Renzo_3@hotmail.com');
call sp_IngresarCliente('C0014','Daniel','Santos','Corcuera','Av.Morales Duares #555','M',66554488,1,'1979-02-22','Da1231','Daniel313@hotmail.com');
call sp_IngresarCliente('C0015','Rafael','Castro','Romo','Jr.Huaraz #214','M',45032168,1,'1985-01-30','Ra342','Rafax-3@hotmail.com');
call sp_IngresarCliente('C0016','Renzo','Castro','Castillo','Jr.Portugal #564','M',30210560,1,'1984-02-24','Ren949','Wandita@hotmail.com');
call sp_IngresarCliente('C0017','Pool','Carassa','Jimenez','Av.Peru #4535','M',10203060,1,'1978-04-22','P4523','pc_23@hotmail.com');
call sp_IngresarCliente('C0018','Alberto','Godofredo','Faez','Av.Arequipa #4523','M',10000235,1,'1984-11-01','Al644','Aed.23f@hotmail.com');
call sp_IngresarCliente('C0019','Renzo','Rojas','Rojas','Av.Risso #242','M',12350064,1,'1971-02-25','Ren090','R_34_3@hotmail.com');
call sp_IngresarCliente('C0020','Xiomara','Zumaeta','Mejia','Jr.Varela #1203','F',80065001,1,'1967-03-24','Xio4532','Xio_10093@hotmail.com');



call sp_DesabilitarCliente('C0001',0);
call sp_DesabilitarCliente('C0005',0);
call sp_DesabilitarCliente('C0013',0);
call sp_DesabilitarCliente('C0006',0);
call sp_DesabilitarCliente('C0004',0);


insert into tb_Destino values('D001','Internacional');
insert into tb_Destino values('D002','Nacional');
/** Registros Paquete**/
call sp_AgregarPaquete('P0001','D001','Paquete de viaje a Tangamandapio para 2 personas pasajes de ida y vuelta
										estadia en el hotel HANDERGERG + desayuno + almuerzo + cena y guia turistica.
										Salida:2015-03-02 10:30pm Regreso: 1 mes(30 dias) y 1 semana.',curdate(),1,'2015-03-01',40,
						850.99,null,'Estandar',null);
call sp_AgregarPaquete('P0002','D001','Paquete de viaje a Venezuela para 4 personas pasajes de ida y vuelta + desayuno almuerzo y cena incluidos
										ademas del transporte y alojamiento en el hotel Fereng.
										Salida:2015-01-31 18:50 pm Regreso:2 semanas.',curdate(),1,'2015-01-30',22,
						950.99,null,'Aereo',null);
call sp_AgregarPaquete('P0003','D001','Paquete de viaje a Iran 6 personas desayuno almuezo cena y alojamiento en el hotel
						Ferenz incluido. Salida:2015-02-16 20:00pm Regreso.30 dias.',curdate(),1,'2015-02-15',33,
						1458.99,null,'Aereo',null);
call sp_AgregarPaquete('P0004','D001','Paquete de viaje a Irak para 4 personas pasajes de ida y vuelta
										estadia en el hotel IrakHoltels
										Salida:2015-03-02 23:00 pm Regrso: 25 dias.',curdate(),1,'2015-03-01',20,
						1500.99,null,'Aereo',null);
call sp_AgregarPaquete('P0005','D001','Paquete de viaje a Turkia para 3 personas alojamiento transporte y comida incluidos.
										Salida:2015-03-02 24:00 pm regrso:28 dias.',curdate(),1,'2015-03-01',34,
						1200.99,null,'Aereo',null);
call sp_AgregarPaquete('P0006','D001','Paquete de viaje a Egipto para 1 persona incluye transporte alojamiento comidas
										guia turistica.
										Salida:2015-04-11 14:00 pm',curdate(),1,'2015-04-10',48,
						700.99,null,'Aereo',null);
call sp_AgregarPaquete('P0007','D001','Paquete de viaje a China para 6 personas incluye alojamiento comidas.
										Salida:2015-05-11 12:00 am Regreso:28 dias',curdate(),1,'2015-05-12',26,
						2500.99,null,'Aereo',null);
call sp_AgregarPaquete('P0008','D001','Paquete de viaje a Japon para 2 personas incluye alojamiendo transporte y comidas
										Salida:2015-07-20 10:00 am Regrso:29 dias',curdate(),1,'2015-07-21',41,
						945.99,null,'Estandar',null);
call sp_AgregarPaquete('P0009','D002','Paquete de viaje a Arequipa para 2 personas pasajes de ida y vuelta
										estadia en el hotel Cielo + desayuno + almuerzo + cena y guia turistica
										Salida:2015-03-03 16:00 Regreso:30 dias',curdate(),1,'2015-03-02',44,
						864.99,null,'Estandar',null);
call sp_AgregarPaquete('P0010','D002','Paquete de viaje a Cuzco para 4 personas
										Salida:2015-04-22 15:00 pm Regreso: 24 dias',curdate(),1,'2015-04-21',24,
						1500.99,null,'Aereo',null);
call sp_AgregarPaquete('P0011','D001','Paquete de viaje a Alemania para 2 personas pasajes de ida y vuelta
										estadia en el hotel Aero + desayuno + almuerzo + cena y guia turistica
										Salida:2015-05-13 13:00 pm Regreso:22 dias',curdate(),1,'2015-05-12',20,
						745.99,null,'Aereo',null);
call sp_AgregarPaquete('P0012','D001','Paquete de viaje a Rusia para 1 persona incluye alojamiento comida transporte
										Salida:2015-04-24 18:00 pm Regreso:29 dias',curdate(),1,'2015-04-23',10,
						500.99,null,'Estandar',null);
call sp_AgregarPaquete('P0013','D002','Paquete de viaje a Tarapoto para 2 personas pasajes de ida y vuelta
										estadia en el hotel Cielo2 + desayuno + almuerzo + cena y guia turistica
										Salida:2015-04-21 10:00 am Regreso:14 dias',curdate(),1,'2015-04-20',25,
						684.99,null,'Aereo',null);
call sp_AgregarPaquete('P0014','D002','Paquete de viaje a Cajamarca para 2 personas pasajes de ida y vuelta
										estadia en el hotel El Cielo3 + desayuno + almuerzo + cena y guia turistica
										Salida:2015-05-20 14:30 pm Regreso:20 dias',curdate(),1,'2015-05-19',29,
						847.99,null,'Aereo',null);
call sp_AgregarPaquete('P0015','D001','Paquete de viaje a Canada para 3 personas incluye alojamiento comidas y transporte
										Salida:2015-03-25 20:30 pm. Regreso:25 dias.',curdate(),1,'2015-03-24',28,
						999.99,null,'Aereo',null);
call sp_AgregarPaquete('P0016','D001','Paquete de viaje a Suiza para 2 personas pasajes de ida y vuelta
										estadia en el hotel Suizaland + desayuno + almuerzo + cena y guia turistica
										Salida:2015-07-13 14:20 pm. Regreso:34 dias',curdate(),1,'2015-07-12',22,
						733.99,null,'Aereo',null);
call sp_AgregarPaquete('P0017','D001','Paquete de viaje a España para 2 personas pasajes de ida y vuelta
										estadia en el hotel Sky + desayuno + almuerzo + cena y guia turistica
										Salida:2015-08-11 10:00 pm. Regreso:22 dias',curdate(),1,'2015-08-10',24,
						500.99,null,'Aereo',null);
call sp_AgregarPaquete('P0018','D001','Paquete de viaje a Brasil para 2 personas pasajes de ida y vuelta
										estadia en el hotel Sky2 + desayuno + almuerzo + cena y guia turistica
										Salida:2015-03-20 15:00 pm. Regreso:15 dias',curdate(),1,'2015-03-19',31,
						957.99,null,'Aereo',null);
call sp_AgregarPaquete('P0019','D001','Paquete de viaje a Argentina para 2 personas pasajes de ida y vuelta
										estadia en el hotel Sky3 + desayuno + almuerzo + cena y guia turistica
										Salida:2015-02-25 15:34 pm. Regreso:24 dias.',curdate(),1,'2015-02-24',40,
						857.99,null,'Estandar',null);
call sp_AgregarPaquete('P0020','D001','Paquete de viaje a Chile para 2 personas pasajes de ida y vuelta
										estadia en el hotel Sky4 + desayuno + almuerzo + cena y guia turistica
										Salida:2015-02-27 18:00 pm. Regreso:20 dias',curdate(),1,'2015-02-26',40,
						900.99,null,'Aereo',null);

/** Registros Oferta**/
call sp_AgregarOferta('O0001','Liquidacion por temporada',30,20);
call sp_AgregarOferta('O0002','Viajes Nacionales con un 40% de descuento!',30,40);
call sp_AgregarOferta('O0003','Descuento Internacionales',30,15);
call sp_AgregarOferta('O0004','Descuento de maravilla',30,40);
call sp_AgregarOferta('O0005','Oferta de ultimo minuto!',30,70);


call sp_AgregarOfertaApaquete('P0009','O0002');
call sp_AgregarOfertaApaquete('P0020','O0005');
call sp_AgregarOfertaApaquete('P0016','O0004');
call sp_AgregarOfertaApaquete('P0018','O0003');

select * from tb_Cliente;
select * from tb_Empleado;
select * from tb_usuario;
select * from tb_Paquetes_Turisticos;