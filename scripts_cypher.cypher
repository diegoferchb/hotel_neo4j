2) Obtener el nombre del jefe del servicio de "Restaurante".

MATCH (e:Empleado)-[:DIRIGE]->(s:Servicio {descripcion:'restaurante'}) return e.nombre

3) Obtener el nombre del jefe de "Jorge Alonso Alonso".

MATCH (e:Empleado)-[:DIRIGE]->(s:Servicio)<-[:ATIENDE_EN]-(e2:Empleado {nombre:'Jorge Alonso Alonso'}) return e.nombre

4) Obtener un listado de los empleados y los servicios a los que están asignados, 
exclusivamente para aquellos que tengan algún servicio asignado.

MATCH (e:Empleado)-[:ATIENDE_EN]->(s:Servicio) return e.nombre, s.descripcion

5) Obtener el número de habitación, tipo y precio de las habitaciones que estén ocupadas en la actualidad 
(no tienen fecha de salida).

MATCH (h:Habitacion)-[:ES_TIPO]-(th:TipoHabitacion), (h)-[:UTILIZO]-(f:Factura) 
WHERE f.salida is null return h.numero,th.tipo,th.precio,f.salida

6) Obtener el nombre y apellidos del cliente o clientes que más veces hayan estado en el hotel 
(no número total de noches, sino estancias diferentes: una persona que ha estado tres veces diferentes de una noche en el hotel habrá 
"estado" más veces que otra persona que ha estado una vez durante tres noches)

CALL
{
CALL
{
	MATCH (c:Cliente)-[:PAGA]-(f:Factura) 
	RETURN c.nombre AS nombre, c.apellidos AS apellidos, COUNT(f.codigof) AS cuenta
}
RETURN MAX(cuenta) as maxCuenta
}
CALL
{
	MATCH (c:Cliente)-[:PAGA]-(f:Factura) 
	RETURN c.nombre AS nombre, c.apellidos AS apellidos, COUNT(f.codigof) AS cuenta
}
WITH * WHERE cuenta=maxCuenta
RETURN nombre, apellidos, cuenta

11) Incrementar en un 10% el sueldo del empleado de "limpieza" que más habitaciones haya limpiado.

CALL
{
	CALL
	{
		MATCH (e:Empleado)-[:LIMPIA]-(h:Habitacion) 
		RETURN e.numreg AS numreg, COUNT(h.numero) as cuenta 
		ORDER BY cuenta DESC LIMIT 1
	}
	RETURN numreg AS selEmpleado
}
MATCH (e:Empleado {numreg : selEmpleado})
SET e.sueldo = e.sueldo * 1.1
RETURN e

