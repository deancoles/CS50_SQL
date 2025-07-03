-- Create and Set Database
CREATE DATABASE linkedin;
USE linkedin;


-- Create a users table
CREATE TABLE users (
	id INT UNSIGNED AUTO_INCREMENT,
	first_name VARCHAR (32) NOT NULL,
	last_name VARCHAR (32) NOT NULL,
    username VARCHAR (32) NOT NULL UNIQUE,
    password CHAR (128) NOT NULL,
    PRIMARY KEY (id)
);

-- Create a schools table
CREATE TABLE schools (
	id INT UNSIGNED AUTO_INCREMENT,
	name VARCHAR (64) NOT NULL,
	type ENUM ('Primary', 'Secondary', 'Higher Education') NOT NULL,
	location VARCHAR (64) NOT NULL,
	founded TINYINT,
	PRIMARY KEY (id)
);

-- Create a companies table
CREATE TABLE companies (
	id INT UNSIGNED AUTO_INCREMENT,
	name VARCHAR (64) NOT NULL,
	type ENUM ('Technology', 'Education', 'Business') NOT NULL,
	location VARCHAR (64) NOT NULL,
	PRIMARY KEY (id)
);

-- Create a user connections table
CREATE TABLE user_connections (
	id int UNSIGNED AUTO_INCREMENT,
	user_1 int UNSIGNED,
	user_2 int UNSIGNED,
	relationship VARCHAR (64) NOT NULL,
	PRIMARY key(id),
	FOREIGN KEY (user_1) REFERENCES users (id),
	FOREIGN KEY (user_2) REFERENCES users (id)
);

-- Create a user schools table
CREATE TABLE user_schools (
    id INT UNSIGNED AUTO_INCREMENT,
    school_id INT UNSIGNED,
    user_id INT UNSIGNED,
    start_date DATE,
    end_date DATE,
    degree VARCHAR (64),
    PRIMARY KEY(id),
    FOREIGN KEY(school_id) REFERENCES schools (id),
    FOREIGN KEY(user_id) REFERENCES users (id)
);

-- Create a user companies table
CREATE TABLE user_companies (
	id INT UNSIGNED AUTO_INCREMENT,
	user_id INT UNSIGNED,
	company_id INT UNSIGNED,
	start_date DATE,
	end_date DATE,
	PRIMARY KEY (id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (company_id) REFERENCES companies (id)
);
	

