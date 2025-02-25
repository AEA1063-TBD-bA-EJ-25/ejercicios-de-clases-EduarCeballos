    create database escelita;

    go;

    use escuelita
    
    Create TABLE Persona(
             CURP CHAR(18) NOT NULL PRIMARY KEY,
             Nombre NVARCHAR(50) NOT NULL,
             Direccion NVARCHAR(100) NULL,
             Nacimiento DATE NOT NULL,
    )
    create TABLE Carrera(

        Clase CHAR(13) NOT NULL PRIMARY KEY,
        Nombre VARCHAR(60) NOT NULL,

    )
    Create TABLE Alumno(
        CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Persona(CURP),
        NumeroDeControl CHAR(8) NOT NULL UNIQUE,
        Carrera CHAR(13) FOREIGN KEY REFERENCES Carrera(Clase),

    )
    select * from persona;


    

