create table [dbo].[Books](
[Id] int primary key identity (1,1),
[Name] nvarchar (100) not null,
[Author] nvarchar (200) not null,
[Genre] nvarchar(100),
[Price] decimal (10,2),
[PageCount] int,
[Published] date,
[CreatedDate] datetime default getdate() not null
)

select * from Books order by Price desc;

select * from Books where Author = 'Çingiz Abdullayev';

update Books set Price = Price * 1.05 where Author = 'Çingiz Abdullayev';

delete from Books where Price > 10000000;

select top 3 * from Books order by Price asc;
