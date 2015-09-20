create table ROOT.CATALOGO(
    Id numeric primary key not null,
    Nombre varchar(100),
    Precio double not null,
    Imagen varchar(300)
)

insert into ROOT.CATALOGO (ID,NOMBRE,PRECIO,IMAGEN) values(1,'Bicicleta BMX HARO',550000,'bici1.png');
insert into ROOT.CATALOGO (ID,NOMBRE,PRECIO,IMAGEN) values(2,'Bicicleta BMX Bianchi',550000,'bici2.png');
insert into ROOT.CATALOGO (ID,NOMBRE,PRECIO,IMAGEN) values(3,'Bicicleta BMX felt',750000,'bici3.png');
insert into ROOT.CATALOGO (ID,NOMBRE,PRECIO,IMAGEN) values(4,'Bicicleta BMX alu',850000,'bici4.png');
insert into ROOT.CATALOGO (ID,NOMBRE,PRECIO,IMAGEN) values(5,'Bicicleta BMX GT',2100000,'bici5.png');
