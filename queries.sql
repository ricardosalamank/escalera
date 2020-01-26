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
