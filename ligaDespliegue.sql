
create table equipos
(
    id_equipos int auto_increment
        primary key,
    nombre     varchar(45) null
);

create table jugadores
(
	id_jugadores int auto_increment,
	fk_equipos int null,
	nombre varchar(45) null,
	fecha_nacimiento datetime null,
	constraint jugadores_pk
		primary key (id_jugadores),
	constraint jugadores_equipos_id_equipos_fk
		foreign key (fk_equipos) references equipos (id_equipos)
);

create table partidos
(
	id_partidos int auto_increment,
	fk_equipo_local int null,
	fk_equipo_visitante int null,
	goles_local int null,
	goles_visitante int null,
	fecha_partido datetime null,
	constraint partidos_pk
		primary key (id_partidos),
	constraint partidos_equipos_id_equipos_fk
		foreign key (fk_equipo_local) references equipos (id_equipos),
	constraint partidos_equipos_id_equipos_fk_2
		foreign key (fk_equipo_visitante) references equipos (id_equipos)
);





INSERT INTO liga.equipos (nombre) VALUES ('Chacarita');
INSERT INTO liga.equipos (nombre) VALUES ('millos');
INSERT INTO liga.equipos (nombre) VALUES ('america');
INSERT INTO liga.equipos (nombre) VALUES ('santafe');
INSERT INTO liga.equipos (nombre) VALUES ('nacional');

INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'valenciano', '1975-06-30 18:56:00');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'pibe', '1977-08-30 18:57:08');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'ronal', '1986-06-25 18:57:39');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'davic', '1979-01-25 18:58:07');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'beckan', '1982-02-25 18:58:26');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'andre', '1969-03-25 19:00:14');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (1, 'tino', '1967-01-25 19:00:45');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'james', '1965-12-25 19:01:21');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'falcao', '1971-01-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'omar', '1989-11-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'rambo', '1981-10-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'movi', '1979-08-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'grud', '1966-06-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'ramiro', '1979-07-25 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'franci', '1983-08-29 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'leno', '1989-07-29 19:01:53');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (2, 'jhon', '1987-08-10 19:04:57');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (3, 'maurico', '1993-08-20 19:05:47');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (3, 'carflos', '1984-06-16 19:06:09');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (3, 'lucho', '1983-11-17 19:07:00');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (3, 'brayan', '1995-07-30 19:07:29');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (4, 'perez', '1983-04-15 19:08:55');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (4, 'maradona', '1987-10-17 19:09:17');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (4, 'higuita', '1985-05-29 19:09:49');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (4, 'cordoba', '1978-01-13 19:10:10');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (5, 'salgado', '1999-09-14 00:44:03');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (5, 'cuadrado', '2000-10-11 00:44:27');
INSERT INTO liga.jugadores (fk_equipos, nombre, fecha_nacimiento) VALUES (5, 'totono', '1997-01-26 00:45:03');

INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (1, 2, 2, 3, '2015-01-20 19:15:47');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (1, 3, 5, 4, '2018-08-17 19:18:46');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (1, 4, 3, 5, '2013-05-30 19:18:58');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (2, 1, 2, 1, '2017-11-15 19:19:07');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (2, 3, 1, 0, '2017-11-03 19:19:16');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (2, 4, 0, 2, '2019-11-28 19:19:24');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (3, 1, 3, 1, '2017-07-28 19:19:32');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (3, 2, 1, 2, '2014-10-30 19:19:38');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (3, 4, 2, 4, '2018-08-13 19:19:45');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (4, 1, 3, 0, '2016-11-03 19:19:53');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (4, 2, 2, 2, '2016-11-04 19:20:00');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (4, 3, 1, 1, '2015-05-14 19:20:08');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (1, 4, 4, 2, '2016-01-01 01:02:03');
INSERT INTO liga.partidos (fk_equipo_local, fk_equipo_visitante, goles_local, goles_visitante, fecha_partido) VALUES (2, 3, 2, 1, '2016-02-12 01:02:45');


------Querys Prueba-----
---1.¿Cuál es el jugador más viejo de cada equipo?
select jugadores.nombre as jugadores_viejos,
       e.nombre as equipo,
       jugadores.fecha_nacimiento
from jugadores
         inner join equipos e on jugadores.fk_equipos = e.id_equipos
where fecha_nacimiento in (select min(fecha_nacimiento) from jugadores group by fk_equipos);

---2.¿Cuántos partidos jugó de visitante cada equipo? (nota: hay equipos no jugaron ningún partido)
select equipos.nombre,
       count(p.id_partidos) partidos_visitante
from equipos
         left join partidos p on equipos.id_equipos = p.fk_equipo_local
group by equipos.nombre;

---3.¿Qué equipos jugaron el 01/01/2016 y el 12/02/2016?
select (select equipos.nombre from equipos where equipos.id_equipos = partidos.fk_equipo_visitante) as visitante,
       (select equipos.nombre from equipos where equipos.id_equipos = partidos.fk_equipo_local)     as local,
       partidos.fecha_partido
from partidos
where fecha_partido between '2016-01-01 00:00:00' and '2016-01-01 23:59:59'
   or fecha_partido between '2016-02-12 00:00:00' and '2016-02-12 23:59:59';

---4.Diga el total de goles que hizo el equipo “Chacarita” en su historia (como local o visitante)
select 'Chacarita', sum(total_goles.total_goles_chacarita) as total_goles
from (select case
                 when fk_equipo_visitante = '1' then goles_visitante
                 when fk_equipo_local = '1' then goles_local
                 end as total_goles_chacarita
      from partidos
      where fk_equipo_local = '1'
         or fk_equipo_visitante = '1') as total_goles


