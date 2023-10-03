CREATE DATABASE eventosGtdPeru;

USE eventosGtdPeru;

CREATE TABLE especialidad (
    idEspecialidad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idEspecialidad)
);

CREATE TABLE actividad (
    idActividad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    idEspecialidad INT NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idActividad),
    FOREIGN KEY (idEspecialidad) REFERENCES Especialidad(idEspecialidad)
);

CREATE TABLE sala (
    idSala INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idSala)
);

CREATE TABLE equipo (
    idEquipo INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idEquipo)
);

CREATE TABLE supervisor (
    idSupervisor INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idSupervisor)
);

CREATE TABLE cliente (
    idCliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idCliente)
);

CREATE TABLE proveedor (
    idProveedor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    activo BOOL DEFAULT TRUE,
    PRIMARY KEY (idProveedor)
);

CREATE TABLE usuario (
    idUsuario INT NOT NULL AUTO_INCREMENT,
    nombreUsuario VARCHAR(16) NOT NULL,
    clave VARCHAR(60) NOT NULL,
    nombreCompleto VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    administrador BOOL DEFAULT FALSE,
    PRIMARY KEY (idUsuario)
);

CREATE TABLE ticket (
    nroTicket INT NOT NULL UNIQUE,
    idSala INT NOT NULL,
    idActividad INT NOT NULL,
    idEquipo INT NOT NULL,
    fechaHoraInicio DATETIME NOT NULL,
    fechaHoraFin DATETIME NOT NULL,
    idSupervisor INT NOT NULL,
    idCliente INT NOT NULL,
    idProveedor INT NOT NULL,
    descripcionTrabajo TEXT,
    personalCliente TEXT,
    personalProveedor TEXT,
    personalGtd TEXT,
    idUsuario INT NOT NULL,
    fechaHoraCreacion DATETIME NULL,
    fechaHoraActualizacion DATETIME NULL,
    PRIMARY KEY (nroTicket),
    FOREIGN KEY (idSala) REFERENCES Sala(idSala),
    FOREIGN KEY (idActividad) REFERENCES Actividad(idActividad),
    FOREIGN KEY (idEquipo) REFERENCES Equipo(idEquipo),
    FOREIGN KEY (idSupervisor) REFERENCES Supervisor(idSupervisor),
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

CREATE TABLE documento (
	idDocumento INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    nroTicket INT NOT NULL,
    PRIMARY KEY (idDocumento),
    FOREIGN KEY (nroTicket) REFERENCES Ticket(nroTicket)
);