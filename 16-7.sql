use master 
create database Libraryy 
create table  Books (
BookID  int,
Title varchar (255),
AuthorID int ,
PublishedYear int,
CopiesAvailable varchar(255) ,
BookCategory varchar(255),
);

 create table Authors(
AuthorID int ,
FirstName  varchar(255) ,
LastName varchar(255) ,
BirthYear int ,);
  
  inserT into Books 
  values( 1 , 'hello' , 11 , 1999, 'no' , 'fun');
  insert into Authors
  values ( 1 , 'Tuqa' , 'Hrahsheh', 2000);

  select * from Books;

select * from Authors;

 select min (PublishedYear) from Books;
  select max (BirthYear) from Authors;

  select avg(PublishedYear)
from Books;


select CopiesAvailable from Books
where CopiesAvailable = 'no';



select count(BookID) as num
from Books;

truncate table Books;

drop table Authors;
