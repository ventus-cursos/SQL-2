CREATE PROCEDURE spTopProducts
	@year int
AS
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

declare @t table
(
	ProductID int,
	ProductName varchar(100),
	Amount money
)

insert into @t
EXEC spTopProducts 1997

select * from @t
GO

ALTER PROCEDURE spAdd
	@x int, @y int, @res int OUTPUT
AS
	SELECT 'Hello'

	SET @res = @x + @y
	SELECT @res
GO

DECLARE @res int
EXEC spAdd 123, 234, @res OUTPUT

SELECT @res

-- upsert
ALTER PROCEDURE UserSave
	@UserID int OUTPUT,
	@UserName varchar(100),
	@FirstName varchar(100),
	@LastName varchar(100),
	@Password varchar(100)
AS
	IF @UserID = 0
		BEGIN
			INSERT INTO [dbo].[Users]
				([UserName], [FirstName], [LastName], [Password])
			VALUES (@UserName, @FirstName, @LastName, @Password)

			SET @UserID = @@IDENTITY
		END
	ELSE
		UPDATE Users
		SET	UserName = @UserName,
			FirstName = @FirstName,
			LastName = @LastName,
			Password = @Password
		WHERE UserID = @UserID
GO

EXEC UserSave 3, 'fdetal', 'Fulano', 'De Tal', NULL

select * from Users