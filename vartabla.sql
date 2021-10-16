declare @ciudad table (
	[ID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IDEstado] [int] NULL,
	[Activo] [bit] NULL
)


INSERT INTO @ciudad (ID) VALUES (1)

select c.*
from @ciudad as f
inner join Ciudad as c on c.id = f.ID
