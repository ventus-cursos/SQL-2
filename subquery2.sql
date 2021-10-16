select * from Cliente
inner join (select distinct idcliente, 1 as x from Orden) as t on cliente.id = t.idcliente
