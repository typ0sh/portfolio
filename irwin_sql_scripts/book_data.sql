# DROP DATABASE IF EXISTS book_shop;
# CREATE DATABASE book_shop;
# USE book_shop; 
 
# CREATE TABLE books 
# 	(
# 		book_id INT NOT NULL AUTO_INCREMENT,
# 		title VARCHAR(100),
# 		author_fname VARCHAR(100),
# 		author_lname VARCHAR(100),
# 		released_year INT,
# 		stock_quantity INT,
# 		pages INT,
# 		PRIMARY KEY(book_id)
# 	);
 
# INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
# VALUES
# ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
# ('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
# ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
# ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
# ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
# ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
# ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
# ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
# ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
# ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
# ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
# ("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
# ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
# ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
# ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
# ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

# select concat_ws('$$',author_fname, author_lname) as 'fullname', released_year from books order by released_year;

# select substring(title,1,10) from books;

# select concat(substring(title,1,10), '...') as 'short title' from books; 

# select reverse(substring(replace(title,'e',3),1,10)) as 'weird string' from books;

# select concat(author_lname, ' is ', char_length(author_lname),' characters long') as 'huh' from books;

# select upper(reverse("why does my cat look at me with such hatred")) as 'string';


# select replace(title, ' ', '->') as 'title' from books;

# select upper(concat_ws(' ',author_fname, author_lname)) as 'Full name in caps' from books;

# select concat(substring(title,1,10), '...') as 'short title', concat_ws(',',author_lname,author_fname) as 'author', concat(stock_quantity, ' in stock') as 'quantity' from books;

# INSERT INTO books
#     (title, author_fname, author_lname, released_year, stock_quantity, pages)
#     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
#            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
#            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);



# select DISTINCT(author_fname) from books;


# select DISTINCT(concat_ws(' ', author_fname, author_lname)) from books;

# select DISTINCT(concat_ws(' ', author_fname, author_lname)) from books;

# select title from books where title like '%stories';

# select title, pages from books order by 2 desc limit 1;

# select concat_ws(' - ', title, released_year) as 'summary' from books order by released_year desc limit 3;

# select title, author_lname from books where author_lname like '% %';

# select title, released_year, stock_quantity from books order by 3 limit 3;

# select title, author_lname from books order by 2,1;

# select UPPER(concat_ws(' ','MY FAVORITE AUTHOR IS',author_fname, concat(author_lname, '!'))) AS 'yell' from books order by author_lname, author_fname;

# select COUNT(title) from books where title like '%the%';


# select title, author_fname, author_lname, count(*) from books group by author_lname;

# select released_year, count(*) from books group by released_year order by 2 desc;



# select title, pages from books where pages=(select max(pages) from books);

# SELECT Concat_ws(' ', author_fname, author_lname) AS 'author',
#        Max(pages)                                 AS 'longest book'
# FROM   books
# GROUP  BY author_lname, author_fname order by 2 desc;

# select author_fname, author_lname, sum(pages) from books group by author_lname, author_fname order by 3 desc;

# select AVG(released_year) from books;

# select released_year, avg(stock_quantity) from books group by released_year;

# select author_lname, author_fname, avg(pages) from books group by 1,2 order by 3 desc;

# select count(title) from books;

# select released_year, count(*) from books group by 1;

# select sum(stock_quantity) from books;

# select concat_ws(' ', author_fname, author_lname), avg(released_year) from books group by author_lname, author_fname;

# select concat_ws(' ', author_fname, author_lname), pages from books where pages=(select max(pages) from books);

# select released_year as 'year', count(title) as '# books', avg(pages) as 'avg pages' from books group by 1;


# select title, released_year,
# CASE
# when released_year > 2000 then "modern lit"
# else "20th century lit"
# end as GENRE
# from books;

# select title, stock_quantity,
# CASE
# when stock_quantity <=50 then '*'
# when stock_quantity <=100 then '**'
# when stock_quantity <=150 then '***'
# else '****'
# end as STOCK
# from books order by title;

select * from books where released_year <1980;
select * from books where author_lname in ('Eggers', 'Chabon');
select * from books where author_lname = 'Lahiri' and released_year > 2000;
select * from books where pages BETWEEN 100 and 200;
select * from books where substring(author_lname,1,1) in ('C','S');
select title, author_lname,
CASE
when title like '%stories' then 'Short stories'
when title in ('Just Kids', 'A Heartbreaking Work of a Staggering Genius') then 'Memoir'
else 'Novel'
end as TYPE
from books;

select title, concat_ws(' ', author_fname, author_lname) as author,
case
when count(*) = 1 then '1 book'
else concat(count(*), ' books')
end as COUNT
from books group by author_lname, author_fname;



