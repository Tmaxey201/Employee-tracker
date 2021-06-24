USE employee_db;

INSERT INTO department (name) VALUES ("Finance");
INSERT INTO department (name) VALUES ("Sales");
INSERT INTO department (name) VALUES ("Engineering");
INSERT INTO department (name) VALUES ("Legal");

INSERT INTO role (title, salary, department_id) VALUES ("Accountant", 55, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Sales Lead", 43, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Salesperson", 38, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Lead Engineer", 80, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Software Engineer", 75, 4);

INSERT INTO employee (first_name, last_name, role_id) VALUES ("Richard", "Hendricks", 1);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Bertram", "Gilfoyle", 2);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Dinesh", "Chugtai", 3);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Erlich", "Bachman", 4);
INSERT INTO employee (first_name, last_name, role_id) VALUES ("Jared", "Dunn", 5);