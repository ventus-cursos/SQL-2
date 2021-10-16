create function fnCustNotBought()
	returns @t table (
		CustomerID nchar(5),
		ProductID int
	)
AS
begin
	declare @a table
	(
		CustomerID nchar(5),
		ProductID int
	)

	INSERT INTO @a (CustomerID, ProductID)
	SELECT c.CustomerID, p.ProductID
	FROM Customers c CROSS JOIN Products p

	declare @b table
	(
		CustomerID nchar(5),
		ProductID int
	)

	INSERT INTO @b (CustomerID, ProductID)
	SELECT o.CustomerID, d.ProductID
	FROM Orders AS o
	INNER JOIN [Order Details] AS d ON o.OrderID = d.OrderID

	insert into @t
	SELECT a.CustomerID, a.ProductID
	FROM @a AS a
	LEFT JOIN @b AS b
	ON a.CustomerID = b.CustomerID
	AND a.ProductID = b.ProductID
	WHERE b.CustomerID IS NULL

	return
end
go

select * from fnCustNotBought()
