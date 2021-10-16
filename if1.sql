declare @max int

SELECT @max = max(n)
from
(select idcliente, count(*) as n
from Orden
group by idcliente) as t

declare @winner table (id int)
insert into @winner (id)
select IDCliente
from Orden
group by idcliente
having count(*) = @max

if (select count(*) from @winner) = 1
    select 'el ganador es:'
else
    select 'hubo empate entre:'

select * from @winner
