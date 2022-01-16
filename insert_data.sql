use students;
 
INSERT INTO mentors(mentor_name,email_id) VALUES ('Sekar','sekar@outlook.com');
INSERT INTO mentors(mentor_name,email_id) VALUES ('Bharath','bharath@gmail.com');
INSERT INTO mentors(mentor_name,email_id) VALUES ('Vino','vino@outlook.com');
INSERT INTO mentors(mentor_name,email_id) VALUES ('Surya','surya@gmail.com');
INSERT INTO mentors(mentor_name,email_id) VALUES ('Ansari','ansari@gmail.com');

 
INSERT INTO users(username,email_id,mentor_id) VALUES('Vijay','Vijay@gmail.com',1);
INSERT INTO users(username,email_id,mentor_id) VALUES('Saro','Saro@gmail.com',1);
INSERT INTO users(username,email_id,mentor_id) VALUES('Priya','Priya@outlook.com',2);
INSERT INTO users  VALUES(DEFAULT, 'Raj','Raj@gmail.com',3);
INSERT INTO users VALUES(DEFAULT,'Jansi','Jansi@gmail.com',5);

 
INSERT INTO codekata(user_id,codekata_problem) VALUES(1,'HTML');
INSERT INTO codekata(user_id,codekata_problem,codekata_solved) VALUES(1,'Javascript','Y');
INSERT INTO codekata(user_id,codekata_problem,codekata_solved) VALUES(3,'Springboot','Y');
INSERT INTO codekata(user_id,codekata_problem) VALUES(3,'JAVA');
INSERT INTO codekata VALUES(DEFAULT,5,'Javascript',DEFAULT);

INSERT INTO courses VALUES(DEFAULT,'Javascript', 'Kanada');
INSERT INTO courses VALUES(DEFAULT,'Javascript', 'English');
INSERT INTO courses VALUES(DEFAULT,'Javascript', 'Hindi');
INSERT INTO courses VALUES(DEFAULT,'HTML', 'English');
INSERT INTO courses VALUES(DEFAULT,'Microserives', 'English');
 
INSERT INTO topics(course_id,topic) VALUES(2,'JS Beginner');
INSERT INTO topics(course_id,topic) VALUES(2,'JS Experienced');
INSERT INTO topics(course_id,topic) VALUES(4,'HTML basics');
INSERT INTO topics(course_id,topic) VALUES(4,'HTML Experienced');
INSERT INTO topics(course_id,topic) VALUES(5,'Springboot');
INSERT INTO topics(course_id,topic) VALUES(5,'Springboot JPA');
INSERT INTO topics(course_id,topic) VALUES(5,'Springboot Cloud');
 

 INSERT INTO tasks  VALUES (DEFAULT,'Create HTML5 Page with contact us','2021-04-07','216',2);
 INSERT INTO tasks  VALUES (DEFAULT,'Design HTML Password Reset Page','2021-04-08','216',2);

 INSERT INTO tasks  VALUES (DEFAULT,'Deploy Projects  to netlify','2021-04-11','216',2);

 INSERT INTO tasks  VALUES (DEFAULT,'Spring boot project with React JS','2021-05-07','216',5);

 INSERT INTO tasks  VALUES (DEFAULT,'Spring boot project with  JPA','2021-06-07','216',5);