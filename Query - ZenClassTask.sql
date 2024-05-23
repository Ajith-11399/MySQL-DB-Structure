SHOW databases;

USE zenclass;

CREATE TABLE session(
session_id INT PRIMARY KEY,
topic VARCHAR(20)
);

CREATE TABLE task(
task_id INT PRIMARY KEY,
task_grade VARCHAR(10)
);

CREATE TABLE attendance(
atd_id INT PRIMARY KEY,
percentage VARCHAR(10)
);

CREATE TABLE mentor(
mentor_id INT PRIMARY KEY,
mentor_name VARCHAR(20)
);

CREATE TABLE feedback(
fb_id INT PRIMARY KEY,
fb_feedback VARCHAR(50)
);

CREATE TABLE student(
std_id INT PRIMARY KEY,
f_name VARCHAR(20),
l_name VARCHAR(20),
email VARCHAR(30),
session_id INT,
task_id INT,
atd_id INT,
mentor_id INT,
fb_id INT,
FOREIGN KEY(session_id) references session(session_id),
FOREIGN KEY(task_id) references task(task_id),
FOREIGN KEY(atd_id) references attendance(atd_id),
FOREIGN KEY(mentor_id) references mentor(mentor_id),
FOREIGN KEY(fb_id) references feedback(fb_id)
);