USE lco_users;

-- TODO CONCAT
 -- 1.Give me full name of studnets?
  SELECT CONCAT(stu_fname,' ', stu_lname) AS fullname from students;
 -- 2.Give me full name and login count of all users.
  SELECT CONCAT(stu_fname,' ', stu_lname) AS full_name,login_count from students;
  SELECT CONCAT(stu_fname,' ', stu_lname,' ','login count is ',login_count) AS full info from students;
  -- TODO: REPLACE
-- 3. While getting all firstname ,change a to @
  SELECT REPLACE(stu_fname,'a','@') AS fun from students;

 -- TODO: SUBSTRING
-- 4. Get me list of emails.if emails is longer than 6 character,truncat it with ..
  SELECT CONCAT(SUBSTRING(email,1,7),'...') AS truncated FROM students;


-- TODO:CHAR_LENGTH
-- 5.Get me length of all registerd emails
 SELECT CHAR_LENGTH(email) AS length from students;


 -- TODO:UPPER CASE AND LOWER CASE
 -- 6. Get me all first name in upper case and last name in lower case
  SELECT UPPER(stu_fname) AS upper_name, LOWER(stu_lname) from students;


-- TODO:DISTINCT
-- 7. How many users are there on your website?
 SELECT DISTINCT stu_fname AS FirstName,email from students;

-- TODO:ORDER BY
-- 8.Arrange all user based on number of login count.
 SELECT  DISTINCT stu_fname,login_count,course_count from 
 students ORDER BY login_count ASC;
 SELECT  DISTINCT stu_fname,login_count,course_count from 
 students ORDER BY login_count DESC;

-- 9. Arrange all user based on number of course count
 SELECT  DISTINCT stu_fname,login_count,course_count from 
 students ORDER BY course_count ASC;
 SELECT  DISTINCT stu_fname,login_count,course_count from 
 students ORDER BY course_count DESC;

-- TODO:LIMIT
-- 10.Want sorted result but only top 5 users
 SELECT DISTINCT stu_fname,login_count 
 from students ORDER BY login_count DESC LIMIT 5;

-- TODO: PATTERN MATCHING(LIKE)
-- 11.Get info about a user ,his name was something esh
 SELECT stu_fname,email from students WHERE stu_fname LIKE '%ya';

-- TODO: COUNT
-- 12. How many users are registered on website.Give me number this time?
 SELECT   COUNT(DISTINCT stu_fname) as count from students;


-- TODO SQL mode
 SET @@sql_mode='';

-- TODO:GROUP BY
 SELECT stu_fname,signup_month from students 
 GROUP BY signup_month;
 SELECT stu_fname,signup_month,COUNT(*) from students 
 GROUP BY signup_month;

-- TODO: MAX MIN
-- 13. Find student with max login and aslo find the one with min course count
 SELECT stu_fname,email,MAX(login_count) from students;
 SELECT stu_fname,email,login_count from students
 WHERE login_count = (SELECT MAX(login_count) from students);

 SELECT stu_fname,email,course_count from students
 WHERE course_count = (SELECT MAX(course_count) from students);

-- TODO:GROUP BY MIN MAX
-- 14. Lowest number of login count in 7th and 10th month
 SELECT MAX(login_count),signup_month from students
 GROUP BY signup_month ORDER BY signup_month;


-- TODO: SUM,AVERAGE
-- 15.Total number of login and average number of course taken by users by month
 SELECT signup_month,login_count from students
 WHERE signup_month=7;

 SELECT signup_month,SUM(login_count) from students
 GROUP BY signup_month;
 SELECT signup_month,AVG(course_count) from students
 GROUP BY signup_month;

-- TODO: AND ,OR
-- 16. Find users who are having login count of least 20 
-- and  are enrolled in at least 5 courses
 SELECT email,login_count,signup_month,course_count from students
 WHERE login_count>=20 && course_count >=5
 ORDER BY login_count;

-- 17. Find users who signed up in 7th and 10th month
 SELECT email,login_count,course_count,signup_month from students
 WHERE signup_month=7 OR signup_month=10;

-- TODO: RANGE - BETWEEN AND
 SELECT email,login_count,signup_month from students
 WHERE signup_month BETWEEN 7 AND 10;

-- TODO:CASEss
SELECT stu_fname,signup_month,
   CASE
      WHEN signup_month BETWEEN 7 AND 10 THEN 'early bird'
      WHEN signup_month BETWEEN 11 AND 12 THEN 'regular user'
      ELSE '##'
   END AS Custom
from students;      

