
 USE codeup_test_db;

 DROP IF EXISTS albums;

 CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name  VARCHAR(100) NOT NULL,
    release_date YEAR,
    sales INT,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);

 