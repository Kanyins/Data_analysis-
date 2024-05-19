CREATE DATABASE student;
use student;
create table faculty(
id INT NOT NULL auto_increment,
name varchar(45),
number_department INT(20),
PRIMARY KEY(id));

create table department (
id INT NOT NULL auto_increment,
name varchar(45),
number_of_lectuer INT NOT NULL,
faculty_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (faculty_id) references faculty(id)
);
CREATE TABLE Student(
id INT NOT NULL AUTO_INCREMENT, 
name varchar(27),
matric_number varchar(34),
department_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (department_id) references department(id));

INSERT INTO department (name, number_of_lectuer,faculty_id)
values('computer science',20,1);
INSERT INTO department(name, number_of_lectuer,faculty_id)
values('Environmental law',34,2);
INSERT INTO department(name, number_of_lectuer,faculty_id)
values('philosophy',23,3);
INSERT INTO department(name, number_of_lectuer,faculty_id)
values('Religion',10,4);
INSERT INTO department(name, number_of_lectuer,faculty_id)
values('CRK',10,2);
INSERT INTO faculty(name, number_department)
values('music',45);
INSERT INTO faculty(name, number_department)
values('Science',45);
INSERT INTO faculty(name, number_department)
values('law',45);
INSERT INTO faculty(name, number_department)
values('art',45);
INSERT INTO Student(name, matric_number,department_id)
values('sola','14/123',1);
INSERT INTO Student(name, matric_number,department_id)
values('ola','14/213',2);
INSERT INTO Student(name, matric_number,department_id)
values('kola','14/312',3);
INSERT INTO Student(name, matric_number,department_id)
values('ishola','14/315',4);
 UPDATE  department SET name='Biochemistry' where id=3;
 UPDATE  faculty SET name='Science' where id=2;
  UPDATE  faculty SET name='art' where id=1;
SELECT * FROM faculty;
SELECT * FROM Student;
SELECT * FROM department;
SELECT * FROM department JOIN faculty on faculty.id=department.faculty_id;
