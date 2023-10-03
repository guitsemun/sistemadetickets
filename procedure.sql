USE eventosGtdPeru;

DROP PROCEDURE IF EXISTS ListarTareas;

DELIMITER |

CREATE PROCEDURE ListarTarea(
	IN limitNumber INT,
    IN pageNumber INT
)
BEGIN
	DECLARE offsetNumber INT;
    SET offsetNumber = (pageNumber - 1) * limitNumber;
    
	select t0.nroTicket, t1.nombre sala, t3.nombre especialidad, t2.nombre actividad, t4.nombre equipo,
	DATE_FORMAT(t0.fechaHoraInicio, "%Y/%m/%d %T") fechaHoraInicio, 
	DATE_FORMAT(t0.fechaHoraFin, "%Y/%m/%d %T") fechaHoraFin, 
	CONCAT(t5.nombres, " ", t5.apellidos) supervisor, 
	t0.descripcionTrabajo, t6.nombre cliente, t7.nombre proveedor, 
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
	group by nroTicket, sala, especialidad, actividad, equipo, fechaHoraInicio, fechaHoraFin,
	supervisor, descripcionTrabajo, cliente, proveedor, personal
	order by t0.fechaHoraInicio desc
	LIMIT limitNumber OFFSET offsetNumber;
END

|

DELIMITER ;
