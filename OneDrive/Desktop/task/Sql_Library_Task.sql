use [master]

create database [Library.]

use [Library.]

create table [dbo].[Books.](
[ID] int primary key identity(1,1),
[Name] nvarchar(100) not null,
[Author] nvarchar(100) not null,
[Genre] nvarchar(100) not null,
[Price] decimal not null,
[PageCount] int not null,
[Published] date not null,
[CreatedDate] datetime not null default getdate(),
)

insert into [Books.]([Name],[Author],[Genre],[Price],[PageCount],[Published],[CreatedDate])
Values

('Mavi Melekler' , 'Çingiz Abdullayev', 'Fiction' , '7.72' , '255' , '2000-02-10' , GETDATE()),
('Üçüncü variant' ,	'Çingiz Abdullayev', 'Detective', '10.48',	'240' , '2007-04-16' , GETDATE()),	
('Mass Psychology' , 'Sigmund Freud' , 'Philosophy' , '10.70' ,'144' , '2022-11-20' , GETDATE()),
('And the mountains echoed', 'Khaled Hosseini' , 'Drama' , '10.90' , '410', '2013-09-11' , GETDATE()),	
('The Fault in Our Stars' , 'John Green' , 'Roman' , '9.00' , '336' , '2016-04-29', GETDATE());

select * from [Books.] Order by [Price] DESC;

select top 3 * from [Books.] order by [Price];

select * from [Books.] where [Author]='Çingiz Abdullayev';

Update [Books.] set [Price]=[Price] * 1.05 where [Author]= 'Çingiz Abdullayev'

DELETE from [Books.] where [Price]>10;