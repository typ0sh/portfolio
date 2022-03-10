# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     FOREIGN KEY(customer_id) REFERENCES customers(id)
# );

# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);



# select ifnull(first_name, 'Missing'), ifnull(last_name, 'Name'), order_date, sum(amount) from customers join orders on customers.id=orders.customer_id group by customer_id;


# select * from customers
# join orders
# on customers.id=orders.customer_id
# group by orders.customer_id;

# select first_name, last_name, sum(amount) as 'total spent'
# from customers
# join orders on customers.id=orders.customer_id
# group by orders.customer_id
# order by 3 desc;

# CREATE TABLE students (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100)
# );
 
 
# CREATE TABLE papers (
#     title VARCHAR(100),
#     grade INT,
#     student_id INT,
#     FOREIGN KEY (student_id) 
#         REFERENCES students(id)
#         ON DELETE CASCADE
# );

# INSERT INTO students (first_name) VALUES 
# ('Caleb'), 
# ('Samantha'), 
# ('Raj'), 
# ('Carlos'), 
# ('Lisa');
 
# INSERT INTO papers (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89);


# SELECT first_name,
#        ifnull(avg(grade), 0) as 'average',
#        CASE
#        when grade >= 75 then 'passing'
#        else 'failing'
#        end as GRADE
# FROM   students
#        LEFT JOIN papers
#               ON students.id = papers.student_id
# group by students.id
# order by 2 desc; 


# create table reviewers(
# id int AUTO_INCREMENT PRIMARY key,
# first_name varchar(100),
# last_name varchar(100)


# );

# create table series(
# id int AUTO_INCREMENT PRIMARY key,
# title varchar(100),
# released_year year(4),
# genre varchar(100)
# );


# INSERT INTO series (title, released_year, genre) VALUES
#     ('Archer', 2009, 'Animation'),
#     ('Arrested Development', 2003, 'Comedy'),
#     ("Bob's Burgers", 2011, 'Animation'),
#     ('Bojack Horseman', 2014, 'Animation'),
#     ("Breaking Bad", 2008, 'Drama'),
#     ('Curb Your Enthusiasm', 2000, 'Comedy'),
#     ("Fargo", 2014, 'Drama'),
#     ('Freaks and Geeks', 1999, 'Comedy'),
#     ('General Hospital', 1963, 'Drama'),
#     ('Halt and Catch Fire', 2014, 'Drama'),
#     ('Malcolm In The Middle', 2000, 'Comedy'),
#     ('Pushing Daisies', 2007, 'Comedy'),
#     ('Seinfeld', 1989, 'Comedy'),
#     ('Stranger Things', 2016, 'Drama');
 
 
# INSERT INTO reviewers (first_name, last_name) VALUES
#     ('Thomas', 'Stoneman'),
#     ('Wyatt', 'Skaggs'),
#     ('Kimbra', 'Masters'),
#     ('Domingo', 'Cortes'),
#     ('Colt', 'Steele'),
#     ('Pinkie', 'Petit'),
#     ('Marlon', 'Crafford');

# create table reviews(
# id int AUTO_INCREMENT PRIMARY key,
#     rating decimal(2,1),
#     series_id int,
#     reviewer_id int,
#     FOREIGN key(series_id) REFERENCES series(id),
#     FOREIGN key(reviewer_id) REFERENCES reviewers(id)

# );

# select first_name, last_name, rating
# from reviewers
# left join reviews
# on reviewers.id = reviews.reviewer_id;

# select title from series
# left join reviews
# on series.id = reviews.series_id
# where reviews.rating is null;


# select genre, round(avg(rating),2) as 'avg rating' from series left join reviews on series.id=reviews.series_id group by series.genre;

# SELECT first_name, 
#        last_name, 
#        Count(rating)                    AS COUNT, 
#        Ifnull(Min(rating), 0)           AS MIN, 
#        Ifnull(Max(rating), 0)           AS MAX, 
#        Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
#        CASE 
#          WHEN Count(rating) >= 10 THEN 'POWER USER' 
#          WHEN Count(rating) > 0 THEN 'ACTIVE' 
#          ELSE 'INACTIVE' 
#        end                              AS STATUS 
# FROM   reviewers 
#        LEFT JOIN reviews 
#               ON reviewers.id = reviews.reviewer_id 
# GROUP  BY reviewers.id; 


select title, rating, concat_ws(' ',first_name, last_name) as 'reviewer'
from reviewers left join reviews
inner join series on series.id=reviews.series_id
on reviewers.id=reviews.reviewer_id
order by 1;

