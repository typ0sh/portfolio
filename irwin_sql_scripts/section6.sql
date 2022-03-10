# CREATE TABLE shirts
#   (
#     shirt_id INT NOT NULL AUTO_INCREMENT,
#     article VARCHAR(100),
#     color VARCHAR(100),
#     shirt_size VARCHAR(100),
#     last_worn INT,
#     PRIMARY KEY(shirt_id)
#   );
    
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

insert into shirts(article, color, shirt_size, last_worn)
values ('shirt', 'purple', 'medium', 50);