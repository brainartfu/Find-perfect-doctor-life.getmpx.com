
CREATE TABLE administrator (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
	emplyee_name VARCHAR(225) NOT NULL,
	employee_email VARCHAR(225) NOT NULL,
	employee_password INT NOT NULL
);





CREATE TABLE cinemas(
    cinema_id INT PRIMARY KEY  AUTO_INCREMENT,
    cinema_location VARCHAR(255) NOT NULL,
    Screen_number VARCHAR(255) NOT NULL ,
    cinema_type VARCHAR(255) NOT NULL
);





CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(255) UNIQUE,
    director_name VARCHAR(255) NOT NULL ,
    cast VARCHAR(255) NOT NULL,
    discription VARCHAR(255) NOT NULL,
    duration VARCHAR(255) NOT NULL,
    classification_age VARCHAR(255) NOT NULL,
    movie_language VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    rate DECIMAL NOT NULL,
    cinema_id VARCHAR (225) NOT NULL,
    FOREIGN KEY (cinema_id) REFERENCES cinemas(cinema_id)
)

CREATE TABLE shows (
	 show_id INT PRIMARY KEY AUTO_INCREMENT,
	 show_time TIME NOT NULL,
	 show_date DATE NOT NULL,
	 movie_id INT,
	 FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);



INSERT INTO `administrator` ( `emplyee_name`, `employee_email`, `employee_password`) VALUES ('Sarah Abdullah', 'sarahabdullah@gmail.com', 'S123123');

INSERT INTO `administrator` ( `emplyee_name`, `employee_email`, `employee_password`) VALUES ('Hessa Mohd', 'hessamohd@gmail.com', 'H123123');




INSERT INTO `cinemas` ( `cinema_location`, `screen_number`, `cinema_type`) VALUES ( 'Alhidd', '1', 'Theater');

INSERT INTO `cinemas` ( `cinema_location`, `screen_number`, `cinema_type`) VALUES ( 'Durrat Albahrain', '2', 'Standard');



INSERT INTO `movies` (`movie_name`, `director_name`, `cast`, `discription`, `duration`, `classification_age`, `movie_language`, `genre`, `rate`, `cinema_id`) VALUES ( 'Avangers', 'Joss Whedon', 'Robert Downey Jr. , Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '2h 23m', 'PG-13', 'English', 'Action, Advanture, Sci-Fi', '8.0', '1');


INSERT INTO `movies` (`movie_name`, `director_name`, `cast`, `discription`, `duration`, `classification_age`, `movie_language`, `genre`, `rate`, `cinema_id`) VALUES ( 'Harry Potter and the Order of the Phoenix', 'David Yates', 'Daniel Radcliffe, Harry Melling, Jason Boyd, Richard Macklin, Kathryn Hunter', 'With their warning about Lord Voldemort\'s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.', '2h 18m', 'PG-13', 'English', 'Family, Action, Advanture', '7.5', '2')



INSERT INTO `shows` (`show_date`, `show_time`, `movie_id`) VALUES ('2022-12-25', '11:00:00', '1');

INSERT INTO `shows` (`show_date`, `show_time`, `movie_id`) VALUES ('2023-01-05', '03:00:00', '2');
