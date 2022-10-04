-- SHOW DATABASES;


 CREATE DATABASE lco_users;
 USE lco_users;

 DROP TABLE Students;

CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(60),
    stu_fname VARCHAR(60),
    stu_lname VARCHAR(60),
    login_count INT,
    signup_month INT,
    course_count INT,
    PRIMARY KEY (student_id)
);

INSERT INTO students (
    email,
    stu_fname,
    stu_lname,
    login_count,
    course_count,
    signup_month) 
VALUES("anu@gmail.com","Anu","Priya",8,2,3),
      ("sai@gmail.com","Sai","Ram",28,5,6),
      ("keerthi@yahoo.com","Keerthi","gani",56,6,7),
      ("gruk@gami.com","gur","karan",18,5,7),
      ("akki@gmail.com","akki","sarup",45,12,1),
      ("surya@gamil.com","surya","kumar",34,5,6),
      ("kiran@gmail.com","kiran","kumar",12,4,5),
      ("miya@gamil.com","miya","nadh",23,12,2),
      ("rishi@yahoo.com","rishi","pandey",34,2,3),
      ("sita@yahoo.com","sita","rani",12,2,3),
      ("priya@yahoo.com","priya","kani",12,3,4);
        

