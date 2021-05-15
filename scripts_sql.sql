2) Obtener el nombre del jefe del servicio de "Restaurante".

select e.nombre from servicio s 
inner join empleado e on (s.numreg = e.numreg)
where s.descripcion = 'restaurante'

3) Obtener el nombre del jefe de "Jorge Alonso Alonso".

select
(select e.nombre from servicio s 
inner join empleado e on (s.numreg = e.numreg)
where s.cods = e2.cods 
)
from empleado e2 
where e2.nombre = 'Jorge Alonso Alonso'

4) Obtener un listado de los empleados y los servicios a los que están asignados, 
exclusivamente para aquellos que tengan algún servicio asignado.

select e.nombre, s.descripcion from empleado e 
inner join servicio s on s.cods = e.cods 
order by e.numreg 

5) Obtener el número de habitación, tipo y precio de las habitaciones que estén ocupadas en la actualidad 
(no tienen fecha de salida).

select h.numero, p.tipo, p.precio from habitacion h 
inner join precio p on h.tipo = p.tipo
inner join factura f on (f.numero=h.numero)
where f.salida is null

6) Obtener el nombre y apellidos del cliente o clientes que más veces hayan estado en el hotel 
(no número total de noches, sino estancias diferentes: una persona que ha estado tres veces diferentes de una noche en el hotel habrá 
"estado" más veces que otra persona que ha estado una vez durante tres noches)

select c.nombre, c.apellidos , count(*)
from cliente c 
inner join factura f on (f.dni = c.dni)
group by c.nombre, c.apellidos 
having count(*) = 
(select max(count) from (
select count(*)
from cliente c 
inner join factura f on (f.dni = c.dni)
group by c.dni 
) p)


11) Incrementar en un 10% el sueldo del empleado de "limpieza" que más habitaciones haya limpiado.

update empleado as e set sueldo = sueldo*1.1 
where numreg = ( 
select numreg from (
select e.numreg, count(*) 
from empleado e 
inner join limpieza l on (e.numreg = l.numreg)
group by e.numreg
order by count(*) desc
limit 1
) p)
returning e.nombre, e.sueldo