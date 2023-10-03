USE eventosGtdPeru;

DROP PROCEDURE IF EXISTS ListarTareaConFiltro;

DELIMITER |

CREATE PROCEDURE ListarTareaConFiltro(
	IN limitNumber INT,
    IN pageNumber INT,
	IN _filter longtext
)
BEGIN
	DECLARE offsetNumber INT;
	DECLARE concat_filter longtext;
    SET offsetNumber = (pageNumber - 1) * limitNumber;
	SET concat_filter = CONCAT('%',_filter,'%');
    
	select 
    t0.nroTicket, 
    t1.nombre sala, 
    t3.nombre especialidad, 
    t2.nombre actividad, 
    t4.nombre equipo,
	DATE_FORMAT(t0.fechaHoraInicio, "%Y/%m/%d %T") fechaHoraInicio, 
	DATE_FORMAT(t0.fechaHoraFin, "%Y/%m/%d %T") fechaHoraFin, 
	CONCAT(t5.nombres, " ", t5.apellidos) supervisor, 
	t0.descripcionTrabajo,
    t6.nombre cliente,
    t7.nombre proveedor, 
	CONCAT("Cliente:",t0.personalCliente," | Proveedor:", t0.personalProveedor," | GTD:", t0.personalGtd) personal,
	IFNULL(GROUP_CONCAT(DISTINCT t8.nombre SEPARATOR ','),'') documentos
	from ticket t0
	inner join sala t1 on t1.idSala = t0.idSala
	inner join actividad t2 on t2.idActividad = t0.idActividad
	inner join especialidad t3 on t3.idEspecialidad = t2.idEspecialidad 
	inner join equipo t4 on t4.idEquipo = t0.idEquipo 
	inner join supervisor t5 on t5.idSupervisor = t0.idSupervisor
	inner join cliente t6 on t6.idCliente = t0.idCliente
	inner join proveedor t7 on t7.idProveedor = t0.idProveedor
	left join documento t8 on t8.nroTicket = t0.nroTicket
    WHERE (
			t0.nroTicket LIKE concat_filter OR
			t1.nombre LIKE concat_filter OR
			t3.nombre LIKE concat_filter OR
			t2.nombre LIKE concat_filter OR
			t4.nombre LIKE concat_filter OR
			CONCAT(t5.nombres, " ", t5.apellidos) LIKE concat_filter OR
			t0.descripcionTrabajo LIKE concat_filter OR
			t6.nombre LIKE concat_filter OR
			t7.nombre LIKE concat_filter
	)
	group by nroTicket, sala, especialidad, actividad, equipo, fechaHoraInicio, fechaHoraFin,
	supervisor, descripcionTrabajo, cliente, proveedor, personal
	order by t0.fechaHoraInicio desc
	LIMIT limitNumber OFFSET offsetNumber;
END

|

DELIMITER ;






USE eventosGtdPeru;

DROP PROCEDURE IF EXISTS ContarTareaConFiltro;

DELIMITER |

CREATE PROCEDURE ContarTareaConFiltro(
	IN _filter longtext
)
BEGIN
	DECLARE concat_filter longtext;
	SET concat_filter = CONCAT('%',_filter,'%');
    
	select 
    t0.nroTicket, 
    t1.nombre sala, 
    t3.nombre especialidad, 
    t2.nombre actividad, 
    t4.nombre equipo,
	DATE_FORMAT(t0.fechaHoraInicio, "%Y/%m/%d %T") fechaHoraInicio, 
	DATE_FORMAT(t0.fechaHoraFin, "%Y/%m/%d %T") fechaHoraFin, 
	CONCAT(t5.nombres, " ", t5.apellidos) supervisor, 
	t0.descripcionTrabajo,
    t6.nombre cliente,
    t7.nombre proveedor, 
	CONCAT("Cliente:",t0.personalCliente," | Proveedor:", t0.personalProveedor," | GTD:", t0.personalGtd) personal,
	IFNULL(GROUP_CONCAT(DISTINCT t8.nombre SEPARATOR ','),'') documentos
	from ticket t0
	inner join sala t1 on t1.idSala = t0.idSala
	inner join actividad t2 on t2.idActividad = t0.idActividad
	inner join especialidad t3 on t3.idEspecialidad = t2.idEspecialidad 
	inner join equipo t4 on t4.idEquipo = t0.idEquipo 
	inner join supervisor t5 on t5.idSupervisor = t0.idSupervisor
	inner join cliente t6 on t6.idCliente = t0.idCliente
	inner join proveedor t7 on t7.idProveedor = t0.idProveedor
	left join documento t8 on t8.nroTicket = t0.nroTicket
    WHERE (
			t0.nroTicket LIKE concat_filter OR
			t1.nombre LIKE concat_filter OR
			t3.nombre LIKE concat_filter OR
			t2.nombre LIKE concat_filter OR
			t4.nombre LIKE concat_filter OR
			CONCAT(t5.nombres, " ", t5.apellidos) LIKE concat_filter OR
			t0.descripcionTrabajo LIKE concat_filter OR
			t6.nombre LIKE concat_filter OR
			t7.nombre LIKE concat_filter
	)
	group by nroTicket, sala, especialidad, actividad, equipo, fechaHoraInicio, fechaHoraFin,
	supervisor, descripcionTrabajo, cliente, proveedor, personal
	order by t0.fechaHoraInicio desc;
END

|

DELIMITER ;







USE eventosGtdPeru;

DROP PROCEDURE IF EXISTS listarPorFechaInicio;

DELIMITER |

CREATE PROCEDURE listarPorFechaInicio(
	IN inicio VARCHAR(10),
    IN final VARCHAR(10)
)
BEGIN
  
	select 
    t0.nroTicket, 
    t1.nombre sala, 
    t3.nombre especialidad, 
    t2.nombre actividad, 
    t4.nombre equipo,
	DATE_FORMAT(t0.fechaHoraInicio, "%Y/%m/%d %T") fechaHoraInicio, 
	DATE_FORMAT(t0.fechaHoraFin, "%Y/%m/%d %T") fechaHoraFin, 
	CONCAT(t5.nombres, " ", t5.apellidos) supervisor, 
	t0.descripcionTrabajo,
    t6.nombre cliente,
    t7.nombre proveedor, 
	CONCAT("Cliente:",t0.personalCliente," | Proveedor:", t0.personalProveedor," | GTD:", t0.personalGtd) personal,
	IFNULL(GROUP_CONCAT(DISTINCT t8.nombre SEPARATOR ','),'') documentos
	from ticket t0
	inner join sala t1 on t1.idSala = t0.idSala
	inner join actividad t2 on t2.idActividad = t0.idActividad
	inner join especialidad t3 on t3.idEspecialidad = t2.idEspecialidad 
	inner join equipo t4 on t4.idEquipo = t0.idEquipo 
	inner join supervisor t5 on t5.idSupervisor = t0.idSupervisor
	inner join cliente t6 on t6.idCliente = t0.idCliente
	inner join proveedor t7 on t7.idProveedor = t0.idProveedor
	left join documento t8 on t8.nroTicket = t0.nroTicket
    WHERE t0.fechaHoraInicio between inicio and final
	group by nroTicket, sala, especialidad, actividad, equipo, fechaHoraInicio, fechaHoraFin,
	supervisor, descripcionTrabajo, cliente, proveedor, personal
	order by t0.fechaHoraInicio desc;
END

|

DELIMITER ;




USE eventosGtdPeru;

DROP PROCEDURE IF EXISTS listarPorFechaFinal;

DELIMITER |

CREATE PROCEDURE listarPorFechaFinal(
	IN inicio VARCHAR(10),
    IN final VARCHAR(10)
)
BEGIN
  
	select 
    t0.nroTicket, 
    t1.nombre sala, 
    t3.nombre especialidad, 
    t2.nombre actividad, 
    t4.nombre equipo,
	DATE_FORMAT(t0.fechaHoraInicio, "%Y/%m/%d %T") fechaHoraInicio, 
	DATE_FORMAT(t0.fechaHoraFin, "%Y/%m/%d %T") fechaHoraFin, 
	CONCAT(t5.nombres, " ", t5.apellidos) supervisor, 
	t0.descripcionTrabajo,
    t6.nombre cliente,
    t7.nombre proveedor, 
	CONCAT("Cliente:",t0.personalCliente," | Proveedor:", t0.personalProveedor," | GTD:", t0.personalGtd) personal,
	IFNULL(GROUP_CONCAT(DISTINCT t8.nombre SEPARATOR ','),'') documentos
	from ticket t0
	inner join sala t1 on t1.idSala = t0.idSala
	inner join actividad t2 on t2.idActividad = t0.idActividad
	inner join especialidad t3 on t3.idEspecialidad = t2.idEspecialidad 
	inner join equipo t4 on t4.idEquipo = t0.idEquipo 
	inner join supervisor t5 on t5.idSupervisor = t0.idSupervisor
	inner join cliente t6 on t6.idCliente = t0.idCliente
	inner join proveedor t7 on t7.idProveedor = t0.idProveedor
	left join documento t8 on t8.nroTicket = t0.nroTicket
    WHERE t0.fechaHoraFin between inicio and final
	group by nroTicket, sala, especialidad, actividad, equipo, fechaHoraInicio, fechaHoraFin,
	supervisor, descripcionTrabajo, cliente, proveedor, personal
	order by t0.fechaHoraFin desc;
END

|

DELIMITER ;


