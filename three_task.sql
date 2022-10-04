-- TODO CONCAT
 -- 1.Give me full name of studnets?
 SELECT CONCAT(stu_fname,' ', stu_lname) AS fullname from students;
 -- 2.Give me full name and login count of all users.
 SELECT CONCAT(stu_fname,' ', stu_lname) AS full_name,login_count from students;
 SELECT CONCAT(stu_fname,' ', stu_lname,' ','login count is ',login_count) AS full info from students;
  TODO: REPLACE
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

-- 8.Arrange all user based on number of login count.

-- 9. Arrange all user based on number of course count
