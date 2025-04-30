
create login jaime
with PASSWORD = 'pAco1.23+'

CREATE LOGIN rosa 
WITH PASSWORD = 'JAIME321.0'

CREATE DATABASE empresagrande;
use empresagrande

--crear a los usuarios

CREATE user jaime
for LOGIN jaime
GO

CREATE USER Rosa 
for login rosa 
GO

--CREAR UN ROL

CREATE role vendedor;
GO
CREATE role rh 
GO



CREATE SCHEMA ventas
go

CREATE SCHEMA produccion
GO

CREATE SCHEMA recursoshumanos
GO

CREATE table ventas.venta(
    folio int not null PRIMARY KEY,
    fecha date,
    clienteid INT not NULL

)
   CREATE table ventas.detalle_venta(
    productoid int not NULL,
    cantidad FLOAT,
    precio money,
    PRIMARY KEY (folio, productoid)
)

CREATE table recursoshumanos.empleado ( 
    empleadoid int not null PRIMARY KEY,
    nombre NVARCHAr (50) not NULL,
    apellidos NVARCHAR (50) not null, 
    depatamentoid int 

)

CREATE TABLE recursoshumanos.depatamento(
    departamento int not null PRIMARY KEY,
    nombre NVARCHAR (50),
    desccription NVARCHAR (250)
)

--le asigno un rol a las tablas
GRANT SELECT INSERT on ventas.venta to vendedor;
grant select insert on ventas.detalle_venta to vendedor;

--es para agregar un usuar el alter role
alter role vendedor add member jaime;

GRANT SELECT INSERT on recursoshumanos.empleado to rh;
grant select insert on recursoshumaons.departamento to rh;

--es para agregar un usuar el alter role
alter role rh add member rosa;