CREATE DATABASE escuelita 

go

use escuelita

create TABLE Persona (
    CURP CHAR(18) NOT NULL PRIMARY KEY,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
)

CREATE TABLE Carrera (
    Clave CHAR(13)NOT NULL PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,

)

CREATE TABLE Alumno (
    CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN Key REFERENCES Persona(CURP), 
    NumeroDeControl CHAR(8) NOT NULL UNIQUE,
    ClaveCarrera CHAR(13) FOREIGN Key REFERENCES Carrera (Clave)

)

select * from persona;

CREATE TABLE Docente (
    CURP        CHAR(18) NOT NULL PRIMARY KEY,
    RFC         CHAR(13) NOT NULL UNIQUE,
    Profesion   NVARCHAR(30) NULL,
    FOREIGN KEY (CURP) REFERENCES Persona(CURP)
)

CREATE TABLE Administratvo (
    CURP CHAR(18) NOT NULL 
    PRIMARY KEY FOREIGN Key REFERENCES Persona(CURP), 
)

INSERT INTO Carrera (Clave, Nombre)
    VALUES ('ITIC-2010-225', 'Ingeniería en Tecnologías de la información y comunicación')

select * from Carrera

INSERT INTO Carrera (Clave, Nombre)
    VALUES  ('ISIC-2010-224', 'Ingeniería en Sistemas Computacionales'),
            ('IMCT-2010-229', 'Ingeniería Mecatrónica')

insert into Persona (CURP, Nombre, Direccion, Nacimiento)
    VALUES ('JS20FR', 'Johane Sacrebleu', 'Por allá', '2003-04-05')

INSERT into Alumno(CURP, NumeroDeControl, ClaveCarrera)
    VALUES ('JS20FR', '20170005', 'ITIC-2010-225')

    select NumeroDeControl, Nombre, ClaveCarrera  from Persona
        join Alumno on Persona.CURP = Alumno.CURP
    select * from Alumno

    select * from Persona
    select * from Carrera

    create TABLE MalaPersona (
    IdPersona int not null IDENTITY PRIMARY key,
    CURP CHAR(18) NOT NULL,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
    )
    select * from MalaPersona 
    
    INSERT into MalaPersona(CURP, Nombre, Direccion, Nacimiento)
    VALUES ('J520FR', 'johane sacrebleu','por alla', '2003-04-05')

CREATE TABLE empleado(
    idEmpleado int not null PRIMARY KEY,
    nombre NVARCHAR(50) not null,
    sueldo money DEFAULT 1500
)
INSERT INTO empleado(idEmpleado, nombre, sueldo)
VALUES(1, 'Felipe de jesus', 2000)

INSERT INTO empleado(idEmpleado, nombre)
VALUES (2, 'chuerk' )  

SELECT * FROM empleado

CREATE TABLE personita(
    idEmpleado int not null PRIMARY key,
    nombre NVARCHAR(50) not null,
    sueldo money DEFAULT 1500,
    telefono VARCHAR(20) check (telefono like '667(0-9) (0-9) (0-9)')
)
INSERT into personita VALUES(1, 'juana', null, '667123')

ALTER TABLE empleado
    add sexo CHAR(1) null check (sexo in('H', 'M'))

SELECT * from empleado
insert into empleado(idEmpleado, nombre, sexo) values (3, 'Alexis Jara Rodriguez', 'H')
insert into empleado(idEmpleado, nombre, sexo) values (4, 'Matilde Sandoval', 'M')

alter table empleado
drop CONSTRAINT CK_empleado_sexo_3F466844

insert into empleado (idEmpleado, nombre, sexo) values(4, 'Matilde Sandoval', 'H')
SELECT * FROM empleado

ALTER table empleado
    ADD CONSTRAINT sexonuevaopciones