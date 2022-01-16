create database students;
use students;

CREATE TABLE mentors(mentor_id INTEGER AUTO_INCREMENT PRIMARY KEY,mentor_name VARCHAR(50),email_id VARCHAR(80) NOT NULL,CONSTRAINT UC_email UNIQUE (email_id));


CREATE TABLE users(user_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, username VARCHAR(50) NOT NULL,email_id VARCHAR(80) NOT NULL
,mentor_id INTEGER,
FOREIGN KEY (mentor_id) REFERENCES mentors(mentor_id),
CONSTRAINT UC_user UNIQUE (username, email_id)
);


CREATE TABLE codekata(codekata_id INTEGER AUTO_INCREMENT PRIMARY KEY,user_id INTEGER,codekata_problem VARCHAR(50) NOT NULL,codekata_solved VARCHAR(1) NOT NULL DEFAULT 'N',
 FOREIGN KEY (user_id) REFERENCES users(user_id)
 );

CREATE TABLE courses(course_id INTEGER AUTO_INCREMENT PRIMARY KEY,course_name VARCHAR(50) NOT NULL, languages VARCHAR(20),   CONSTRAINT languages CHECK (Frequency IN ('Tamil', 'Hindi', 'English')));

CREATE TABLE topics(topics_id INTEGER AUTO_INCREMENT PRIMARY KEY,course_id INTEGER, topic VARCHAR(200),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

 
CREATE TABLE tasks(task_id INTEGER AUTO_INCREMENT PRIMARY KEY,task VARCHAR(150), task_date DATE,batch_id INTEGER,course_id INTEGER,
FOREIGN KEY (course_id) REFERENCES courses(course_id));


CREATE TABLE attendance(attendance_id INTEGER AUTO_INCREMENT PRIMARY KEY, attendance_date DATE NOT NULL, is_class_attended VARCHAR(1) NOT NULL DEFAULT 'N', user_id INTEGER NOT NULL,course_id INTEGER ,topics_id INTEGER, 
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (topics_id) REFERENCES topics(topics_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE company_drives(drives_id INTEGER AUTO_INCREMENT PRIMARY KEY, drive_date DATE,user_id INTEGER,company VARCHAR(100),status VARCHAR(15) NOT NULL DEFAULT 'Applied',
CONSTRAINT languages CHECK (status IN ('Applied', 'Inprogress', 'Selected','Rejected')),

FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE students_activated_courses(id INTEGER AUTO_INCREMENT PRIMARY KEY,user_id INTEGER,course_id INTEGER,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
