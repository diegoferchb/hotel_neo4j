
CREATE (cliente_111111:Cliente {dni:'111111', nombre:'Antonio', apellidos:'Aguirre', domicilio:'Pez 20, 1º A', telefono:'999418768'})
CREATE (cliente_222222:Cliente {dni:'222222', nombre:'Jorge', apellidos:'Anguiano López', domicilio:'Churruca 2, 6º D', telefono:'999876737'})
CREATE (cliente_333333:Cliente {dni:'333333', nombre:'Pilar', apellidos:'Méndez Alonso', domicilio:'Gran Via 167', telefono:'999343543'})
CREATE (cliente_444444:Cliente {dni:'444444', nombre:'Azucena', apellidos:'Rubio del Val', domicilio:'Brasil 63, 2º A', telefono:'999456765'})
CREATE (cliente_555555:Cliente {dni:'555555', nombre:'Raúl', apellidos:'Gutiérrez González', domicilio:'Literatos 3, 5º', telefono:'999876234'})
CREATE (cliente_666666:Cliente {dni:'666666', nombre:'Santiago', apellidos:'Rivera Romero', domicilio:'Avda. de la Paz 30', telefono:'999111232'})
CREATE (cliente_777777:Cliente {dni:'777777', nombre:'Pedro', apellidos:'González Hernando', domicilio:'Castellana 290, 9º B', telefono:'999232221'})
CREATE (cliente_888888:Cliente {dni:'888888', nombre:'Antonio', apellidos:'Díaz Martín', domicilio:'Cuba 1', telefono:'999444554'})
CREATE (cliente_999999:Cliente {dni:'999999', nombre:'Virginia', apellidos:'Fernández Fernández', domicilio:'Brasil 65, 3º', telefono:'999009009'})
CREATE (cliente_000000:Cliente {dni:'000000', nombre:'Francisco', apellidos:'Vilansó Rodríguez', domicilio:'General Rodrigos 24', telefono:'999666565'})

CREATE (individual:TipoHabitacion {tipo:'individual', precio:75})
CREATE (doble:TipoHabitacion {tipo:'doble', precio:90})

CREATE (habitacion_100:Habitacion {numero:100, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_101:Habitacion {numero:101, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_102:Habitacion {numero:102, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_200:Habitacion {numero:200, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_201:Habitacion {numero:201, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'NO'})
CREATE (habitacion_202:Habitacion {numero:202, superficie:15, bar:'SI',terraza:'SI', puedesupletoria:'NO'})
CREATE (habitacion_203:Habitacion {numero:203, superficie:15, bar:'NO',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_204:Habitacion {numero:204, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_300:Habitacion {numero:300, superficie:17, bar:'NO',terraza:'SI', puedesupletoria:'SI'})
CREATE (habitacion_301:Habitacion {numero:301, superficie:17, bar:'SI',terraza:'SI', puedesupletoria:'SI'})

CREATE (cliente_111111)-[:RESERVA {entrada:'2011-02-01 00:00:00', salida:'2011-02-04 00:00:00'}]->(habitacion_101)
CREATE (cliente_111111)-[:RESERVA {entrada:'2011-02-03 00:00:00', salida:'2011-02-04 00:00:00'}]->(habitacion_102)
CREATE (cliente_222222)-[:RESERVA {entrada:'2011-02-02 00:00:00', salida:'2011-02-06 00:00:00'}]->(habitacion_300)
CREATE (cliente_777777)-[:RESERVA {entrada:'2011-02-17 00:00:00', salida:'2011-02-19 00:00:00'}]->(habitacion_203)
CREATE (cliente_777777)-[:RESERVA {entrada:'2011-03-25 00:00:00', salida:'2011-03-27 00:00:00'}]->(habitacion_204)
CREATE (cliente_999999)-[:RESERVA {entrada:'2011-02-11 00:00:00', salida:'2011-02-15 00:00:00'}]->(habitacion_200);

MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 100 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 101 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 102 AND t.tipo = 'individual' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 200 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 201 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 202 AND t.tipo = 'individual' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 203 AND t.tipo = 'individual' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 204 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 300 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);
MATCH (h:Habitacion) WITH h MATCH (t:TipoHabitacion) WHERE h.numero = 301 AND t.tipo = 'doble' CREATE (h)-[:ES_TIPO]->(t);

CREATE (empleado_1:Empleado {numreg:1, nombre:'Luisa Blanco Baroja', incorporacion :'1996-10-23 00:00:00',sueldo :1000})
CREATE (empleado_2:Empleado {numreg:2, nombre:'Fernando Serrano Vázquez', incorporacion :'1996-10-23 00:00:00',sueldo :1000})
CREATE (empleado_3:Empleado {numreg:3, nombre:'Manuel Pérez Calo', incorporacion :'2000-01-01 00:00:00',sueldo :900})
CREATE (empleado_4:Empleado {numreg:4, nombre:'Ana Troncoso Calvo', incorporacion :'2000-01-01 00:00:00',sueldo :900})
CREATE (empleado_5:Empleado {numreg:5, nombre:'Alba Troncoso Calvo', incorporacion :'2002-09-13 00:00:00'})
CREATE (empleado_6:Empleado {numreg:6, nombre:'Jorge Alonso Alonso', incorporacion :'2002-09-13 00:00:00'})
CREATE (empleado_7:Empleado {numreg:7, nombre:'Fernando Soaje Alvarez', incorporacion :'2010-01-01 00:00:00'})
CREATE (empleado_8:Empleado {numreg:8, nombre:'Rosa Luigi Paz', incorporacion :'2010-01-01 00:00:00',sueldo :1000})
CREATE (empleado_9:Empleado {numreg:9, nombre:'Rafael Fuertes Cabrera', incorporacion :'2010-01-01 00:00:00',sueldo :1100})
CREATE (empleado_10:Empleado {numreg:10, nombre:'Antonio Sancho Sancho', incorporacion :'2010-01-01 00:00:00',sueldo :1000})
CREATE (empleado_11:Empleado {numreg:11, nombre:'María Gonzalo Fuentes', incorporacion :'2010-01-01 00:00:00',sueldo :1000})
CREATE (empleado_12:Empleado {numreg:12, nombre:'Juana Peláez Trasto', incorporacion :'2010-01-01 00:00:00',sueldo :900})
CREATE (empleado_13:Empleado {numreg:13, nombre:'Gonzalo Cabezas Muiño', incorporacion :'2010-01-01 00:00:00',sueldo :1500});

MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-08-20 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-08-21 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-08-22 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-08-23 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 102 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-08-24 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 202 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-09-23 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 203 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-09-23 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 204 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-09-30 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 301 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-10-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 300 AND e.numreg = 10 CREATE (e)-[:LIMPIA {fecha:'2010-10-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 100 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 102 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 200 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 201 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-11 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 202 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-11 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 203 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-11 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 204 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-11 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 300 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-12 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 301 AND e.numreg = 12 CREATE (e)-[:LIMPIA {fecha:'2010-09-12 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 100 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-08-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 100 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-09-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 100 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-10-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 100 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-10-02 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-08-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 101 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-08-14 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 102 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-08-15 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 200 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-08-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 201 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 202 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-09-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 203 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-01-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 204 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-01-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 301 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-01-10 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 301 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-01-01 00:00:00'}]->(h);
MATCH (h:Habitacion) WITH h MATCH (e:Empleado) WHERE h.numero = 301 AND e.numreg = 11 CREATE (e)-[:LIMPIA {fecha:'2010-01-07 00:00:00'}]->(h);

CREATE (servicio_1:Servicio {cods:1, descripcion :'tintoreria', costeinterno  :50})
CREATE (servicio_2:Servicio {cods:2, descripcion :'plancha', costeinterno  :30})
CREATE (servicio_3:Servicio {cods:3, descripcion :'lavanderia', costeinterno  :60})
CREATE (servicio_4:Servicio {cods:4, descripcion :'bar', costeinterno  :15})
CREATE (servicio_5:Servicio {cods:5, descripcion :'restaurante', costeinterno  :50})
CREATE (servicio_6:Servicio {cods:6, descripcion :'floristeria', costeinterno  :25});

MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 1 AND e.numreg = 1 CREATE (e)-[:DIRIGE]->(s);
MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 2 AND e.numreg = 2 CREATE (e)-[:DIRIGE]->(s);
MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 3 AND e.numreg = 3 CREATE (e)-[:DIRIGE]->(s);
MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 4 AND e.numreg = 4 CREATE (e)-[:DIRIGE]->(s);
MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 5 AND e.numreg = 8 CREATE (e)-[:DIRIGE]->(s);
MATCH (s:Servicio) WITH s MATCH (e:Empleado) WHERE s.cods = 6 AND e.numreg = 9 CREATE (e)-[:DIRIGE]->(s);

MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 1 AND s.cods = 1 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 2 AND s.cods = 2 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 3 AND s.cods = 3 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 4 AND s.cods = 4 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 5 AND s.cods = 1 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 6 AND s.cods = 5 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 7 AND s.cods = 5 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 8 AND s.cods = 5 CREATE (e)-[:ATIENDE_EN]->(s);
MATCH (e:Empleado) WITH e MATCH (s:Servicio) WHERE e.numreg = 9 AND s.cods = 6 CREATE (e)-[:ATIENDE_EN]->(s);

CREATE (factura_0:Factura {codigof:0, entrada :'2010-01-01 00:00:00', salida :'2010-01-05 00:00:00', supletoria:0, total :220})
CREATE (factura_1:Factura {codigof:1, entrada :'2010-01-01 00:00:00', salida :'2010-01-03 00:00:00', supletoria:30, total :360})
CREATE (factura_2:Factura {codigof:2, entrada :'2010-06-01 00:00:00', salida :'2010-06-03 00:00:00', supletoria:30, total :180})
CREATE (factura_3:Factura {codigof:3, entrada :'2010-09-01 00:00:00', salida :'2010-09-03 00:00:00', supletoria:30, total :338})
CREATE (factura_4:Factura {codigof:4, entrada :'2010-11-02 00:00:00', supletoria:0})
CREATE (factura_5:Factura {codigof:5, entrada :'2010-11-01 00:00:00', supletoria:0})
CREATE (factura_6:Factura {codigof:6, entrada :'2010-10-29 00:00:00', supletoria:30})
CREATE (factura_7:Factura {codigof:7, entrada :'2010-11-01 00:00:00', supletoria:0})
CREATE (factura_8:Factura {codigof:8, entrada :'2010-10-30 00:00:00', supletoria:30})
CREATE (factura_9:Factura {codigof:9, entrada :'2010-05-15 00:00:00', salida :'2010-05-17 00:00:00', supletoria:0, total :218})
CREATE (factura_10:Factura {codigof:10, entrada :'2010-08-10 00:00:00', salida :'2010-08-13 00:00:00', supletoria:0, total :270})
CREATE (factura_11:Factura {codigof:11, entrada :'2010-08-15 00:00:00', salida :'2010-08-22 00:00:00', supletoria:0, total :525})
CREATE (factura_12:Factura {codigof:12, entrada :'2010-12-23 00:00:00', salida :'2010-12-24 00:00:00', supletoria:0, total :90})
CREATE (factura_13:Factura {codigof:13, entrada :'2010-05-01 00:00:00', salida :'2010-05-05 00:00:00', supletoria:0, total :380})
CREATE (factura_14:Factura {codigof:14, entrada :'2010-06-06 00:00:00', salida :'2010-06-11 00:00:00', supletoria:0, total :375})
CREATE (factura_15:Factura {codigof:15, entrada :'2010-08-15 00:00:00', salida :'2010-08-19 00:00:00', supletoria:0, total :363})
CREATE (factura_16:Factura {codigof:16, entrada :'2010-08-19 00:00:00', salida :'2010-08-21 00:00:00', supletoria:0, total :212})
CREATE (factura_17:Factura {codigof:17, entrada :'2010-08-22 00:00:00', salida :'2010-08-24 00:00:00', supletoria:0, total :190})

CREATE (efectivo:FormaPago {forma :'efectivo', comision :0})
CREATE (tarjeta:FormaPago {forma :'tarjeta', comision :1})
CREATE (talon:FormaPago {forma :'talon', comision :2})


CREATE (factura_0)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_1)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_2)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_3)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_4)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_5)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_6)-[:ES_FORMA_PAGO]->(talon)
CREATE (factura_7)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_8)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_9)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_10)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_11)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_12)-[:ES_FORMA_PAGO]->(talon)
CREATE (factura_13)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_14)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_15)-[:ES_FORMA_PAGO]->(tarjeta)
CREATE (factura_16)-[:ES_FORMA_PAGO]->(efectivo)
CREATE (factura_17)-[:ES_FORMA_PAGO]->(tarjeta);

MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '999999' AND f.codigof = 0 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '111111' AND f.codigof = 1 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '111111' AND f.codigof = 2 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '111111' AND f.codigof = 3 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '111111' AND f.codigof = 4 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '333333' AND f.codigof = 5 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '999999' AND f.codigof = 6 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '555555' AND f.codigof = 7 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '777777' AND f.codigof = 8 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '999999' AND f.codigof = 9 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '333333' AND f.codigof = 10 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '888888' AND f.codigof = 11 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '444444' AND f.codigof = 12 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '999999' AND f.codigof = 13 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '555555' AND f.codigof = 14 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '555555' AND f.codigof = 15 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '666666' AND f.codigof = 16 CREATE (c)-[:PAGA]->(f);
MATCH (c:Cliente) WITH c MATCH (f:Factura) WHERE c.dni = '666666' AND f.codigof = 17 CREATE (c)-[:PAGA]->(f);

MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 300 AND f.codigof = 0 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 100 AND f.codigof = 1 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 100 AND f.codigof = 2 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 100 AND f.codigof = 3 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 100 AND f.codigof = 4 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 200 AND f.codigof = 5 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 204 AND f.codigof = 6 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 300 AND f.codigof = 7 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 301 AND f.codigof = 8 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 301 AND f.codigof = 9 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 300 AND f.codigof = 10 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 102 AND f.codigof = 11 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 201 AND f.codigof = 12 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 300 AND f.codigof = 13 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 203 AND f.codigof = 14 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 203 AND f.codigof = 15 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 204 AND f.codigof = 16 CREATE (f)-[:UTILIZO]->(h);
MATCH (h:Habitacion) WITH h MATCH (f:Factura) WHERE h.numero = 203 AND f.codigof = 17 CREATE (f)-[:UTILIZO]->(h);


MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 1 AND s.cods =1 CREATE (f)-[:INCLUYE{coste:25,fecha:'2010-01-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 1 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:15,fecha:'2010-01-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =3 CREATE (f)-[:INCLUYE{coste:25,fecha:'2010-09-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =3 CREATE (f)-[:INCLUYE{coste:25,fecha:'2010-09-02 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =3 CREATE (f)-[:INCLUYE{coste:25,fecha:'2010-09-03 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:10,fecha:'2010-09-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:20,fecha:'2010-09-03 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =1 CREATE (f)-[:INCLUYE{coste:10,fecha:'2010-09-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 3 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:43,fecha:'2010-09-02 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 5 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:25,fecha:'2010-11-01 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 5 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:28,fecha:'2010-11-02 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 5 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:33,fecha:'2010-11-03 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 5 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:24,fecha:'2010-11-04 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 5 AND s.cods =3 CREATE (f)-[:INCLUYE{coste:13,fecha:'2010-11-02 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 7 AND s.cods =6 CREATE (f)-[:INCLUYE{coste:20,fecha:'2010-11-02 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 9 AND s.cods =4 CREATE (f)-[:INCLUYE{coste:6,fecha:'2010-05-15 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 9 AND s.cods =4 CREATE (f)-[:INCLUYE{coste:8,fecha:'2010-05-16 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 9 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:24,fecha:'2010-05-16 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 13 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:10,fecha:'2010-05-03 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 13 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:10,fecha:'2010-05-04 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 15 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:45,fecha:'2010-08-15 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 15 AND s.cods =4 CREATE (f)-[:INCLUYE{coste:5,fecha:'2010-08-15 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 15 AND s.cods =2 CREATE (f)-[:INCLUYE{coste:13,fecha:'2010-08-15 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 16 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:32,fecha:'2010-08-19 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 17 AND s.cods =1 CREATE (f)-[:INCLUYE{coste:10,fecha:'2010-08-20 00:00:00'}]->(s);
MATCH (f:Factura) WITH f MATCH (s:Servicio) WHERE f.codigof = 17 AND s.cods =5 CREATE (f)-[:INCLUYE{coste:30,fecha:'2010-08-23 00:00:00'}]->(s);


CREATE (p_121212T:Proveedor {nif:'121212T', nombre:'Carnes SA',direccion:'Plaza de los de Acá 20'})
CREATE (p_343434L:Proveedor {nif:'343434L', nombre:'Logística Pérez',direccion:'Calle del Pueblo 30, 1º'})
CREATE (p_545454Q:Proveedor {nif:'545454Q', nombre:'Prd. Quimicos SA',direccion:'Colombiana 34'})

CREATE (fp1:FacturaProveedor {codfp:1,fecha:'2010-03-21 00:00:00', importe:1500})
CREATE (fp2:FacturaProveedor {codfp:2,fecha:'2010-04-21 00:00:00', importe:1000})
CREATE (fp3:FacturaProveedor {codfp:3,fecha:'2010-05-21 00:00:00', importe:500})
CREATE (fp4:FacturaProveedor {codfp:4,fecha:'2010-06-21 00:00:00', importe:976})
CREATE (fp5:FacturaProveedor {codfp:5,fecha:'2010-03-21 00:00:00', importe:345})
CREATE (fp6:FacturaProveedor {codfp:6,fecha:'2010-05-21 00:00:00', importe:235})
CREATE (fp7:FacturaProveedor {codfp:7,fecha:'2010-07-21 00:00:00', importe:1000})
CREATE (fp8:FacturaProveedor {codfp:8,fecha:'2010-08-21 00:00:00', importe:765})
CREATE (fp9:FacturaProveedor {codfp:9,fecha:'2010-03-21 00:00:00', importe:1235})
CREATE (fp10:FacturaProveedor {codfp:10,fecha:'2010-04-11 00:00:00', importe:2342})
CREATE (fp11:FacturaProveedor {codfp:11,fecha:'2010-06-15 00:00:00', importe:2567})

CREATE (fp1)<-[:COBRA]-(p_121212T)
CREATE (fp2)<-[:COBRA]-(p_121212T)
CREATE (fp3)<-[:COBRA]-(p_121212T)
CREATE (fp4)<-[:COBRA]-(p_121212T)
CREATE (fp5)<-[:COBRA]-(p_343434L)
CREATE (fp6)<-[:COBRA]-(p_343434L)
CREATE (fp7)<-[:COBRA]-(p_343434L)
CREATE (fp8)<-[:COBRA]-(p_343434L)
CREATE (fp9)<-[:COBRA]-(p_545454Q)
CREATE (fp10)<-[:COBRA]-(p_545454Q)
CREATE (fp11)<-[:COBRA]-(p_545454Q)


MATCH (p:Proveedor) WITH p MATCH (e:Empleado) WHERE p.nif ='121212T' AND e.numreg =8 CREATE (e)-[:PAGA]->(p);
MATCH (p:Proveedor) WITH p MATCH (e:Empleado) WHERE p.nif ='343434L' AND e.numreg =1 CREATE (e)-[:PAGA]->(p);
MATCH (p:Proveedor) WITH p MATCH (e:Empleado) WHERE p.nif ='545454Q' AND e.numreg =12 CREATE (e)-[:PAGA]->(p);

MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =1 AND e.numreg =8 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =2 AND e.numreg =8 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =3 AND e.numreg =8 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =4 AND e.numreg =8 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =5 AND e.numreg =1 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =6 AND e.numreg =1 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =7 AND e.numreg =1 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =8 AND e.numreg =1 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =9 AND e.numreg =12 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =10 AND e.numreg =12 CREATE (e)-[:HACE_PEDIDO]->(fp);
MATCH (fp:FacturaProveedor) WITH fp MATCH (e:Empleado) WHERE fp.codfp =11 AND e.numreg =12 CREATE (e)-[:HACE_PEDIDO]->(fp);

MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =1 CREATE (s)-[:USA{fecha:'2010-08-25'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =1 CREATE (s)-[:USA{fecha:'2010-08-30'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =1 CREATE (s)-[:USA{fecha:'2010-09-24'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =2 CREATE (s)-[:USA{fecha:'2010-08-18'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =2 CREATE (s)-[:USA{fecha:'2010-09-01'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =3 CREATE (s)-[:USA{fecha:'2010-09-05'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =4 CREATE (s)-[:USA{fecha:'2010-09-20'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =4 CREATE (s)-[:USA{fecha:'2010-09-29'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =5 AND s1.cods =6 CREATE (s)-[:USA{fecha:'2010-09-25'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =4 AND s1.cods =2 CREATE (s)-[:USA{fecha:'2010-09-17'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =4 AND s1.cods =2 CREATE (s)-[:USA{fecha:'2010-08-29'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =4 AND s1.cods =3 CREATE (s)-[:USA{fecha:'2010-09-01'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =4 AND s1.cods =3 CREATE (s)-[:USA{fecha:'2010-09-05'}]->(s1);
MATCH (s:Servicio) WITH s MATCH (s1:Servicio) WHERE s.cods =4 AND s1.cods =3 CREATE (s)-[:USA{fecha:'2010-09-19'}]->(s1);



MATCH (habitacion {numero: '101'})--(cliente)
RETURN cliente, habitacion

MATCH (habitacion {numero: "101"})<-[:RESERVA]-(cliente) RETURN cliente

