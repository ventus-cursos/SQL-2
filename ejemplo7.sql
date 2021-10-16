set xact_abort on

begin transaction

-- verificar que lo que voy a hacer esta bien
select *
from users
where userid = 1

-- ejecutarlo
update users
set active = 0
where userid = 1

-- verificar que lo que hice esta bien
select *
from users

-- commit	<-- cambiar el rollback por commit cuando este bien
rollback
