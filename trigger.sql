USE eventosGtdPeru;

DROP TRIGGER IF EXISTS ticketInsertar;

DELIMITER |

CREATE TRIGGER ticketInsertar BEFORE INSERT ON ticket
  FOR EACH ROW BEGIN
    SET NEW.fechaHoraCreacion = NOW();
  END
|

DELIMITER ;

DROP TRIGGER IF EXISTS ticketActualizar;

DELIMITER |

CREATE TRIGGER ticketActualizar BEFORE UPDATE ON ticket
  FOR EACH ROW BEGIN
    SET NEW.fechaHoraActualizacion = NOW();
  END
|

DELIMITER ;