use Northwind

declare @last_order datetime

select @last_order = max(OrderDate) from Orders

-- no funciona
-- select @last_order = MAX(OrderDate), MAX(ShippedDate) from orders

select @last_order = OrderDate from Orders order by OrderDate

print @last_order