# create table dogs(
# name char(5),
# breed varchar(10)

# );

# insert into dogs (name, breed) VALUES
# ('bob', 'beagle'),
# ('robby', 'corgi'),
# ('Princess Jane', 'Retriever');

# create table items(
# price decimal(5,2)



# );

# insert into items(price) VALUES
# (7),
# (888),
# (38.88),
# (298.9999),
# (2);

# create table people(
# name varchar(100),
#     birthday date,
#     birthtime time,
#     birthdt datetime


# );

# insert into people (name, birthday, birthtime, birthdt) VALUES
# ('Toaster', curdate(), curtime(), now());


# select monthname(birthdt), day(birthdt), year(birthdt) from people;

# select concat(name, ' was born on a ',date_format(birthdt, 'was born on a %W')) from people;


# create table comments(
# content varchar(100),
#     created_at timestamp DEFAULT now()

# );

# insert into comments (content) VALUES
# ('lol what a funny'),
# ('i found that');

# create table inventory(
# item_name varchar(255),
# price decimal(8,2),
# quantity int

# # );
# select curtime();
# select curdate();
# select dayofweek(now());
# select dayname(now());
# select date_format(now(), '%m/%d/%Y');
# select date_format(now(), '%M %D %h:%i');


SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);

