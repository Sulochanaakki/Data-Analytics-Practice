 SHOW DATABASES;
 SELECT DATABASE();
 USE photo_store;
 SELECT DATABASE();



 CREATE TABLE cameras(
    model_name VARCHAR(30),
    quantity INT
 );
 DESC cameras;

  DROP TABLE cameras;
 SHOW tABLES;
 -- TODO: Creating a table

 CREATE TABLE canon_cameras(
    model_name VARCHAR(30),
    quantity INT
 );
 DESC canon_cameras;

 -- TODO: Inserting values in tsble

 INSERT INTO canon_cameras(model_name,quantity)
 VALUES("70-D",12),
 ("80D",19ss),
 ("EOS-R",25),
 ("EOS-r5",80),
 ("EOS-r6",50);


-- TODO: Answering customer questions
-- 1. What models of canon camers do you have?
 SELECT * from canon_cameras;
 SELECT model_name from canon_cameras;

-- 2. How many 80D can you give right now?
 SELECT model_name,quantity from canon_cameras
 WHERE model_name="80d";

-- 3. I want ot buy 50 cameras of same model.What canyou supply me at the moment?
 SELECT model_name,quantity from canon_cameras
 WHERE quantity>=50;


