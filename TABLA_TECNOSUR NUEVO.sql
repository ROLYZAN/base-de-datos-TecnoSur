CREATE DATABASE TecnoSur;
USE TecnoSur;
CREATE TABLE categorias_productos(
    id_categoria_productos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_productos VARCHAR(45) NOT NULL,
    tipo_productos VARCHAR(45) NOT NULL,
    cantidad_stock INT NOT NULL
);

CREATE TABLE marcas(
    id_marca INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_marca VARCHAR(45) NOT NULL
);

CREATE TABLE unidad_medida(
    id_unidad_medida INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_medida VARCHAR(45) NOT NULL,
    abreviatura VARCHAR(10) NOT NULL
);

CREATE TABLE monedas(
    id_monedas INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_moneda VARCHAR(45) NOT NULL,
    simbolo VARCHAR(5) NOT NULL
);

CREATE TABLE forma_pago(
    id_forma_pago INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_pago VARCHAR(45) NOT NULL
);

CREATE TABLE metodos_envio(
    id_metodo_envio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_envio VARCHAR(45) NOT NULL
);

CREATE TABLE almacenes(
    id_almacenes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_almacen VARCHAR(45) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE estado_pedido(
    id_estado_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_estado VARCHAR(45) NOT NULL
);

CREATE TABLE tipo_cliente(
    id_tipo_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_tipo VARCHAR(45) NOT NULL
);

CREATE TABLE proveedor(
    id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ruc VARCHAR(45) NOT NULL,
    telefono VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL
);


-- 1. CATEGORIAS DE PRODUCTOS
INSERT INTO categorias_productos (nombre_productos, tipo_productos, cantidad_stock) 
VALUES
('Smartphones', 'Dispositivos Móviles', 150),
('Laptops', 'Cómputo', 45),
('Monitores', 'Cómputo', 30),
('Teclados Mecánicos', 'Accesorios', 80),
('Audífonos Bluetooth', 'Audio', 120),
('Smartwatches', 'Dispositivos Móviles', 65),
('Tarjetas de Video', 'Componentes', 20),
('Discos Sólidos SSD', 'Almacenamiento', 200),
('Cargadores Rápidos', 'Accesorios', 300),
('Cámaras Web', 'Video', 40);

-- 2. MARCAS
INSERT INTO marcas (nombre_marca) 
VALUES
('Nokia'),
('Samsung'),
('Redmi'),
('Toshiba'),
('Apple'),
('Lenovo'),
('ASUS'),
('Sony'),
('Logitech'),
('Xiaomi');

-- 3. UNIDAD DE MEDIDA
INSERT INTO unidad_medida (nombre_medida, abreviatura) 
VALUES
('Unidad', 'UND'),
('Par', 'PAR'),
('Gramo', 'GR'),
('Kilogramo', 'KG'),
('Caja', 'CJ'),
('Set', 'SET'),
('Paquete', 'PQT'),
('Metro', 'M'),
('Litro', 'L'),
('Mililitro', 'ML');

-- 4. MONEDAS
INSERT INTO monedas (nombre_moneda, simbolo) 
VALUES
('Soles', 'S/.'),
('Dólares Americanos', 'US$'),
('Euros', '€'),
('Yuanes', '¥'),
('Pesos Chilenos', '$'),
('Pesos Colombianos', '$'),
('Pesos Mexicanos', '$'),
('Reales', 'R$'),
('Libras Esterlinas', '£'),
('Yen Japonés', '¥');

-- 5. FORMA DE PAGO
INSERT INTO forma_pago (nombre_pago) 
VALUES
('Tarjeta de Crédito'),
('Tarjeta de Débito'),
('Efectivo'),
('Yape'),
('Plin'),
('Transferencia BCP'),
('Transferencia Interbank'),
('PagoEfectivo'),
('PayPal'),
('Criptomonedas');

-- 6. METODOS DE ENVIO
INSERT INTO metodos_envio (nombre_envio) 
VALUES
('Recojo en Tienda Principal'),
('Recojo en Sucursal 01'),
('Delivery Local Express'),
('Delivery Local Regular'),
('Envío a Provincia por Olva Courier'),
('Envío a Provincia por Shalom'),
('Envío a Provincia por Marvisur'),
('Contraentrega Lima Metropolitana'),
('Envío Marítimo Internacional'),
('Envío Aéreo Internacional');

-- 7. ALMACENES
INSERT INTO almacenes (nombre_almacen, direccion) 
VALUES
('Almacén Central', 'Av. Argentina 1420, Lima'),
('Sucursal San Isidro', 'Av. Javier Prado Este 450, San Isidro'),
('Sucursal Miraflores', 'Av. Larco 789, Miraflores'),
('Almacén Norte', 'Av. Alfredo Mendiola 3500, Los Olivos'),
('Almacén Sur', 'Av. Pedro Miotta 450, San Juan de Miraflores'),
('Sucursal Arequipa', 'Calle Mercaderes 123, Arequipa'),
('Sucursal Trujillo', 'Jr. Pizarro 540, Trujillo'),
('Almacén de Tránsito', 'Av. Elmer Faucett 2010, Callao'),
('Sucursal Huancayo', 'Av. Real 456, Huancayo'),
('Sucursal Piura', 'Av. Grau 789, Piura');

-- 8. ESTADO PEDIDO
INSERT INTO estado_pedido (nombre_estado) 
VALUES
('Pendiente de Pago'),
('Pago Confirmado'),
('En Preparación'),
('Listo para Despacho'),
('Enviado / En Ruta'),
('Entregado con Éxito'),
('Cancelado por el Cliente'),
('Cancelado por Falta de Stock'),
('Devuelto / En Reclamo'),
('Reembolsado');

-- 9. TIPO CLIENTE
INSERT INTO tipo_cliente (nombre_tipo) 
VALUES
('Cliente Natural (DNI)'),
('Cliente Empresa (RUC)'),
('Cliente Mayorista'),
('Cliente Corporativo'),
('Distribuidor Autorizado'),
('Cliente Frecuente / VIP'),
('Cliente Técnico / Técnico Independiente'),
('Entidad Pública / Estado'),
('Cliente Extranjero'),
('Revendedor / Dropshipper');

-- 10. PROVEEDOR
INSERT INTO proveedor (nombre, ruc, telefono, email) 
VALUES
('Tecnologías Globales S.A.C.', '20154879632', '987654321', 'ventas@tecglobal.pe'),
('Importaciones del Sur EIRL', '20451278963', '951236478', 'contacto@importsur.com'),
('Suministros Digitales Perú', '20784512369', '963852741', 'info@sumidigital.pe'),
('Asia Tech Cargo Express', '20361425789', '941258369', 'logistica@asiatech.com'),
('Distribuidora Eléctrica Lima', '20986532147', '925147369', 'mayorista@distrelec.pe'),
('Nokia Latam S.A.', '20124578963', '014205566', 'soporte@nokia.latam'),
('Samsung Electronics Perú', '20554433221', '016102030', 'corporativo@samsung.com.pe'),
('Toshiba Storage Solutions', '20887766554', '912345678', 'sales@toshibastorage.pe'),
('Logitech Mayoristas S.A.', '20336699885', '999888777', 'canales@logitech.pe'),
('Xiaomi Perú Oficial S.A.C.', '20601234567', '988776655', 'distribucion@xiaomi.com.pe');


select * from marcas;


