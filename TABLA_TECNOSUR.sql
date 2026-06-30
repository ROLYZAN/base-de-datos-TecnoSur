create database TecnoSur;
use TecnoSur;
create table categorias_productos(
id_categoria_productos int not null primary key auto_increment,
nombre_productos varchar(45) not null,
tipo_productos varchar(45) not null,
cantidad_stock int not null

);
create table marcas(
id_marca int not null primary key auto_increment,
nokia varchar(45) not null,
samzung varchar(45) not null,
redmi varchar (45) not null,
toshiba varchar (45) not null

);
create table unidad_medida(
id_unidad_medida int not null primary key auto_increment,
unidad int not null,
par int not null,
gramo decimal not null,
kilo decimal not null

);
create table monedas(
id_monedas int not null primary key auto_increment,
soles decimal not null,
dolares decimal not null,
euro decimal not null,
yuan decimal not null

);
create table forma_pago(
id_forma_pago int not null primary key auto_increment,
tarjeta varchar(45) not null,
efectivo decimal not null,
yape decimal not null,
tranferencia decimal not null

);
create table metodos_envio(
id_metodo_envio int not null primary key auto_increment,
recojo_tienda varchar(45) not null,
delivery_local varchar(45) not null,
provincia varchar(45) not null

);
create table almacenes(
id_almacenes int not null primary key auto_increment,
local_principal varchar(45) not null,
local_sucursal varchar (45) not null,
local_sucursal2 varchar (45) not null

);
create table estado_pedido(
id_estado_pedido int not null primary key auto_increment,
pendiente varchar(45) not null,
confirmado varchar (45) not null,
enviado varchar (45) not null,
entregado varchar (45) not null,
cancelado varchar (45) not null

);
create table tipo_cliente (
id_tipo_cliente int not null primary key auto_increment,
cliente_natural varchar(45) not null,
cliente_empresa varchar (45) not null,
cliente_mayorista varchar (45) not null

);
create table proveedor(
id_proveedor int not null primary key auto_increment,
nombre varchar(50) not null,
ruc varchar (45) not null,
telefono varchar (45) not null,
email varchar (45) not null


);

