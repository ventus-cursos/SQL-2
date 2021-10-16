select * from Ciudad order by Nombre

declare @newid int

insert into Ciudad (Nombre, IDEstado, Activo)
values ('Marin', 1, 1)

set @newid = @@identity

select @newid

select * from ciudad where id = @newid
