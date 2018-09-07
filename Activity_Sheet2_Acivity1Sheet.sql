Activity1

1) LIST OUT resource NAME ,date_of_joining,location  od resource whose years_of_exp IS more THAN 2 years

SELECT resource1.NAME,resource1.Date_Of_Joining,location.location_id
FROM resource1 INNER JOIN location 
ON resource1.location_id = location.location_id AND resource1.year_of_Exp > 2;

2) Find the employee which maximum experience

SELECT resource1.NAME,MAX(resource1.year_of_Exp) 
FROM resource1;

3) Find the resource WITH Indore location 

SELECT resource1.NAME 
FROM resource1 
INNER JOIN location 
ON resource1.location_id = location.location_id AND location_name ="Indore";

4) Find the resource NAME,hours ,location ,week_end_date

SELECT resource1.NAME,location.location_name,resource2.hours,resource2.week_endDate
FROM resource1 
INNER JOIN location
ON resource1.location_id = location.location_id
INNER JOIN resource2
ON resource2.resourceid = resource1.id;

5) DELETE record FROM location TABLE WITH location NAME AS Mumbai

DELETE FROM location
WHERE location.location_name ="Mumbai";

6) Make listing of ALL the records FROM ALL the TABLES USING INNER JOIN 

SELECT resource1.NAME,location.location_name,resource2.hours,resource2.week_endDate
FROM resource1 
INNER JOIN location
ON resource1.location_id = location.location_id
INNER JOIN resource2
ON resource2.resourceid = resource1.id
INNER JOIN project
ON project.location_id = resource1.location_id;

7)  DROP PRIMARY KEY  AND FOREIGN KEY CONSTRAINT FROM project TABLE (DROP CONSTRAINT NOT the COLUMNS)

ALTER TABLE project
DROP FOREIGN KEY location_id;

ALTER TABLE project 
DROP PRIMARY KEY projectid;