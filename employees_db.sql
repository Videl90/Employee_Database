DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE departments(
    id INTEGER (200) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    department_name VARCHAR (200) NOT NULL
);

CREATE TABLE roles(
	id INTEGER (200) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR (200) NOT NULL,
	salary DECIMAL (65) NOT NULL,
	department_id INTEGER(200),
    CONSTRAINT FOREIGN KEY (department_id) REFERENCES departments (id)
);

CREATE TABLE employees(
	employee_id INTEGER (200) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	first_name VARCHAR (200) NOT NULL,
    last_name VARCHAR (200) NOT NULL,
    role_id INTEGER (200),
    manager_id INTEGER (200),
    CONSTRAINT FOREIGN KEY (role_id) REFERENCES roles (id) 
);

INSERT INTO departments (department_name)
VALUES ("Direction"),("Production"),("Finance"),("Marketing");

INSERT INTO roles(department_id, title, salary)
VALUES (1, "Director", 30000), (1, "Choreographer", 10000), (1, "Dancer", 5000), (1, "Actor", 7000), (1, "Singer", 5000),
(2, "Production Manager", 10000), (2, "Make Up Artist", 3000), (2, "Scenic Designer", 5000), (2, "Costume Designer", 5000), (2, "Ligthning Designer", 4000),
(3, "Finances Manager", 7000), (3, "Accountant", 4000), (3, "Payments", 2000), 
(4, "Marketing Manager", 7000), (4, "RP", 3000), (4, "Community Manager", 1000), (4, "Production Designer", 5000);

INSERT INTO employees(first_name, last_name, role_id, manager_id)
VALUES ("Fernando", "Díaz", 1, null), ("Noé", "Aguilar", 6, null), ("Fabiola", "Pineda", 11, null), ("Lorena", "Santos", 14, null),
("Katia", "Nogueda", 2, 1), ("Regina", "González", 3, 1), ("Miguel", "Reyes", 3, 1), ("Carlos", "Rizzo", 4, 1), ("Samantha", "Miguelez", 4, 1), ("Silvia", "Labra", 4, 1), ("Bruno", "Silva", 4, 1),
("Stefanía", "Brito", 5, 1), ("Daniela", "Barcelata", 5, 1), ("Istvan", "Nagy", 5, 1), ("Emily", "Díaz", 5, 1),
("Mariela", "Díaz", 7, 6), ("Moisés", "Feller", 8, 6), ("Martín", "Hernández", 9, 6), ("Fernanda", "Mora", 10, 6), 
("Adrián", "Ortíz", 12, 11), ("Leonardo", "Ladrón", 13, 11), 
("Raúl", "Aragonés", 15, 14), ("Fernanda", "García", 16, 14), ("Pauilina", "Gavilán", 17, 14);

SELECT *
FROM employees;

SELECT employee_id, first_name, last_name, title, department, salary, manager_id
FROM employees;


SELECT *
FROM departments;

SELECT *
FROM roles;

SELECT *
FROM employees;




