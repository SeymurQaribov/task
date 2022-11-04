create table task5(
satus int ,
qty int,
price int,
total int
);

insert into task5 values( 0, 5, 2, 10 )
insert into task5 values(0,-3, 2, -6 )
insert into task5 values(1, 4, 3, 12)
insert into task5 values( 1, -1, 3, -3 )
insert into task5 values(2, 8, 1, 8 )
insert into task5 values(2, -3, 1, -3)

select satus,
sum(qty) qty,
sum(total) as total 
from task5
where satus = 0
group by satus
union
select satus,
max(qty) as qty,
sum(total) as total 
from task5
where satus >0
group by satus




