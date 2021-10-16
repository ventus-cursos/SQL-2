select * from Orden

select * from Cliente

select * from Cliente
where ID in (select IDCliente from Orden)

select * from Cliente
where ID not in (select IDCliente from Orden)
