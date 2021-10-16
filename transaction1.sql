SET XACT_ABORT ON
BEGIN TRANSACTION

insert into Test (id) values (1)
insert into Test (id) values (2)
insert into Test (id) values (3)
insert into Test (id) values (4)
insert into Test (id) values (5)
insert into Test (id) values (6)
insert into Test (id) values (7)
insert into Test (id) values (8)

SELECT * FROM Test

--COMMIT
ROLLBACK
