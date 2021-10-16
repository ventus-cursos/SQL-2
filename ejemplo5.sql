create function age(@dob datetime)
	returns int
as
begin
	return datediff(YYYY, @dob, GETDATE())
end

select dbo.age('1972-04-18')
go

CREATE FUNCTION fnTopProducts (@year int)
	returns table
AS
	return
		SELECT TOP 10 d.ProductID,
			   MIN(p.ProductName) AS ProductName,
			   SUM(d.UnitPrice * d.Quantity *( 1 - d.Discount )) AS Amount
		FROM Orders o
			 INNER JOIN [Order Details] d ON o.orderid = d.orderid
			 INNER JOIN products p ON d.productid = p.productid
		WHERE YEAR (o.OrderDate) = @year
		GROUP BY d.ProductID
		ORDER BY amount DESC
GO

select * from fnTopProducts(1997)
GO
