select t1.name,t2.name,t2.address from table1 t1 left outer join table2 t2 on(t1.name=t2.name) where t2.name is not null
union
select a.t1name,t3.name,t3.address from (select t1.name t1name from table1 t1 left outer join table2 t2 on(t1.name=t2.name) where t2.name is null)a
inner join table3 t3 on (a.t1name=t3.name);
