Day1 Sheet
SELECT * FROM resource;

3) UPDATE Years of EXP Kartik  TO 8 FROM 10
UPDATE resource
SET year_of_Exp = 10 WHERE NAME="Kartik Dharmendra Jalgaonkar";


4) DELETE record of Vishal

DELETE FROM resource
WHERE NAME="Vishal Khandu Kumkar";

5) ALTER  TABLE TO ADD location COLUMN 
ALTER TABLE resource
ADD location VARCHAR(500);

6)Make id AS PRIMARY KEY
ALTER TABLE resource
ADD PRIMARY KEY(id);

7) ALTER  TABLE TO DROP COLUMN years_of_exp 

ALTER TABLE resource
DROP COLUMN year_of_Exp;

8) ALTER TABLE TO CHANGE the datatype of PRIMARY KEY COLUMN TO BIGINT

ALTER TABLE resource
MODIFY COLUMN id BIGINT; 
9) WRITE a SELECT statement TO VIEW ALL the FROM the TABLE created

SELECT * FROM resource;

10) WRITE a SELECT statement TO VIEW DATA IN the increasing AND decreasing ORDER of date_of_joining

SELECT * FROM 
resource GROUP BY Date_Of_Joining ASC;

SELECT * FROM 
resource GROUP BY Date_Of_Joining DESC;
