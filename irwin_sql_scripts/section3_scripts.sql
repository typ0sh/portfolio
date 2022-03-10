# CREATE TABLE cats 
#   ( 
#      cat_id INT NOT NULL AUTO_INCREMENT, 
#      name   VARCHAR(100), 
#      breed  VARCHAR(100), 
#      age    INT, 
#      PRIMARY KEY (cat_id) 
#   ); 


INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

# create table pastries(
# name VARCHAR(50),
#     quantity INT

# );

# insert into cats (name, age)
# values ('tyler1', 28),
# ('tyler2', 28),
# ('tyler3', 28),
# ('tyler4', 28)

# create table people(
# first_name varchar(20) default 'no name provided',
# last_name varchar (20),
# age int default 99
    

# );

# insert into people (first_name, last_name, age)
# values
# ('Tina', 'Belcher', 13)
# ,('Bob', 'Belcher', 13)
# ,('Linda', 'Belcher', 13)
# ,('Tina', 'Belcher', 13)

# create table employees(
# id int AUTO_INCREMENT NOT NULL PRIMARY KEY
# ,last_name varchar(255) NOT NULL
# ,first_name varchar(255) NOT NULL
# ,middle_name varchar(255)
# ,age int NOT NULL
# ,current_status varchar(255) not null default 'employed'
# );

# insert into employees (first_name, last_name, age) values ('Dora', 'Smith', 58)