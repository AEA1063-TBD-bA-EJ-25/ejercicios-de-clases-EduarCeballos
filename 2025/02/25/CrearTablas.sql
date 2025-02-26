    create database escuelita;

    GO 

    USE escuelita
    
    CREATE TABLE Persona(
             CURP CHAR(18) NOT NULL PRIMARY KEY,
             Nombre NVARCHAR(50) NOT NULL,
             Direccion NVARCHAR(100) NULL,
             Nacimiento DATE NOT NULL,
    )
    CREATE TABLE Carrera(

        Clave CHAR(13) NOT NULL PRIMARY KEY,
        Nombre VARCHAR(60) NOT NULL,

    )
    CREATE TABLE Alumno(
        CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Persona(CURP),
        NumeroDeControl CHAR(8) NOT NULL UNIQUE,
        ClaveCarrera CHAR(13) FOREIGN KEY REFERENCES Carrera(Clase),

    )

    CREATE TABLE Docente(
        CURP CHAR(18) NOT NULL PRIMARY KEY,
        RFC CHAR(13) NOT NULL UNIQUE,
        Profesion NVARCHAR (30) NULL,
        FOREIGN KEY (CURP) REFERENCES Persona(CURP)

    )

    CREATE TABLE Administrativo(
        CURP CHAR (18) NOT NULL
        PRIMARY KEY
        FOREIGN KEY REFERENCES Persona(CURP)
    )
    
    INSERT INTO carrera(clase,Nombre)
    VALUES('ITIC-2010-225', 'sistemas computacionales'),
            ('IMCT-2010-229', 'Ingeniera Mecatronica')

    INSERT INTO Persona(CURP, Nombre, Direccion, Nacimiento)
        VALUES('J520FR', 'Jphane Sacrebleu', 'por alla', '2003-04-05')


    INSERT INTO Alumno (CURP, NumeroDeControl, ClaveCarrera)
        VALUES('J520FR', '20170005', 'ITIC-2010-225')

    SELECT NumeroDeControl, Nombre, ClaveCarrera FROM Persona
        join Alumno on Persona.CURP = Alumno.CURP
    

