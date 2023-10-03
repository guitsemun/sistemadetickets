USE eventosGtdPeru;

INSERT INTO especialidad (nombre) VALUES ('TI');
INSERT INTO especialidad (nombre) VALUES ('ENERGIA');
INSERT INTO especialidad (nombre) VALUES ('CLIMATIZACION');
INSERT INTO especialidad (nombre) VALUES ('COMUNICACIONES');
INSERT INTO especialidad (nombre) VALUES ('INFRAESTRUCTURA');
INSERT INTO especialidad (nombre) VALUES ('ADMINISTRATIVO');
INSERT INTO especialidad (nombre) VALUES ('COMERCIAL');
INSERT INTO especialidad (nombre) VALUES ('MONITOREO');

-- TI
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSPECCION', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('EMERGENCIA', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('FACILITY', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INGRESO EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSTALACIONES OTROS', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANTENIMIENTO EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('REUBICACION EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('RETIRO EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CAMBIO EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION EQUIPO', 1);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANOS REMOTAS', 1);

-- ENERGIA
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSPECCION', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREVENTIVO', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANTENIMIENTO', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CORRECTIVO LEVE', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('EVENTO', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INCIDENCIA', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREDICTIVO', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSTALACION', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MEJORA', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('FACILITY', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION', 2);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('RETIRO EQUIPO', 2);

-- CLIMATIZACION
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSPECCION', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREVENTIVO', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANTENIMIENTO', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CORRECTIVO LEVE', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('EVENTO', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INCIDENCIA', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREDICTIVO', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSTALACION', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MEJORA', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('FACILITY', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION', 3);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('RETIRO EQUIPO', 3);

-- COMUNICACIONES
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSPECCION', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREVENTIVO', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANTENIMIENTO', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CORRECTIVO LEVE', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('EVENTO', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INCIDENCIA', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREDICTIVO', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSTALACION', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MEJORA', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('FACILITY', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION', 4);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('RETIRO EQUIPO', 4);

-- INFRAESTRUCTURA
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSPECCION', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREVENTIVO', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MANTENIMIENTO', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CORRECTIVO LEVE', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('EVENTO', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INCIDENCIA', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('PREDICTIVO', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INSTALACION', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MEJORA', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('FACILITY', 5);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('RETIRO EQUIPO', 5);

-- ADMINISTRATIVO
INSERT INTO actividad (nombre, idespecialidad) VALUES ('VISITA GUIADA', 6);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CAPACITACION', 6);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('SIMULACRO', 6);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CHARLA', 6);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('DOCUMENTACION', 6);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INFORME', 6);

-- COMERCIAL
INSERT INTO actividad (nombre, idespecialidad) VALUES ('VISITA GUIADA', 7);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('INFORME', 7);

-- MONITOREO
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION BMS', 8);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION DCIM', 8);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('CONFIGURACION SAF', 8);
INSERT INTO actividad (nombre, idespecialidad) VALUES ('MEJORA', 8);

INSERT INTO Sala (nombre) VALUES ('SALA DE BOMBAS');
INSERT INTO Sala (nombre) VALUES ('SALA DE GENERADORES');
INSERT INTO Sala (nombre) VALUES ('SALA ELECTRICA');
INSERT INTO Sala (nombre) VALUES ('SALA CONTROL GENERACION ELECTRICA');
INSERT INTO Sala (nombre) VALUES ('SALA CARRIER A');
INSERT INTO Sala (nombre) VALUES ('SALA CARRIER B');
INSERT INTO Sala (nombre) VALUES ('SALA DE SUBESTACION ELECTRICA');
INSERT INTO Sala (nombre) VALUES ('SALA BLANCA 1.1');

INSERT INTO Equipo (nombre) VALUES ('GABINETE 13');
INSERT INTO Equipo (nombre) VALUES ('GABINETE 12');
INSERT INTO Equipo (nombre) VALUES ('GABINETE 14');
INSERT INTO Equipo (nombre) VALUES ('GENERADOR 1');
INSERT INTO Equipo (nombre) VALUES ('GENERADOR 2');
INSERT INTO Equipo (nombre) VALUES ('TABLERO GENERAL');

INSERT INTO Supervisor (nombres, apellidos) VALUES ('ALIT', 'TSE');
INSERT INTO Supervisor (nombres, apellidos) VALUES ('LUIS', 'VEGA');
INSERT INTO Supervisor (nombres, apellidos) VALUES ('MICHAEL', 'PEREZ');
INSERT INTO Supervisor (nombres, apellidos) VALUES ('JUAN', 'BALDEON');
INSERT INTO Supervisor (nombres, apellidos) VALUES ('PAUL', 'MEJIA');

INSERT INTO cliente (nombre) VALUES ('OSITRAN');
INSERT INTO cliente (nombre) VALUES ('BUREAU VERITAS');
INSERT INTO cliente (nombre) VALUES ('CAJA MAYNAS');
INSERT INTO cliente (nombre) VALUES ('RENUSA');
INSERT INTO cliente (nombre) VALUES ('GLOBAL TPA');
INSERT INTO cliente (nombre) VALUES ('INCHCAPE');
INSERT INTO cliente (nombre) VALUES ('TERPEL');
INSERT INTO cliente (nombre) VALUES ('GTD-DC');
INSERT INTO cliente (nombre) VALUES ('GTD-TI');
INSERT INTO cliente (nombre) VALUES ('GTD-RED');
INSERT INTO cliente (nombre) VALUES ('GTD-INFRAESTRUCTURA');

INSERT INTO proveedor (nombre) VALUES ('APICSA');
INSERT INTO proveedor (nombre) VALUES ('VERTIV');
INSERT INTO proveedor (nombre) VALUES ('ECOTERMO');
INSERT INTO proveedor (nombre) VALUES ('SYPSA');
INSERT INTO proveedor (nombre) VALUES ('MATYSGER');
INSERT INTO proveedor (nombre) VALUES ('CUMMINS');
INSERT INTO proveedor (nombre) VALUES ('GTD-DC');
INSERT INTO proveedor (nombre) VALUES ('GTD-TI');
INSERT INTO proveedor (nombre) VALUES ('GTD-RED');
INSERT INTO proveedor (nombre) VALUES ('GTD-INFRAESTRUCTURA');

INSERT INTO usuario (nombreusuario, clave, nombreCompleto, email, administrador)
VALUES ('admin', '$2a$10$RtmjRYFJkMkY3HpfK9UkNuu/6S9aKkP0t4vYDVP/0ZSekDgjhg61C', 'Administrador de Sistema', 'admin@mail.com', true);