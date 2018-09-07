


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

{Activity 1 28 quetion]

SHOW TABLES;
DESC customer;

1)  COUNT the number of Non NULL rating FIELDS IN the Customers TABLE (including repeats)

SELECT COUNT(rating) FROM customer;

2) WRITE a QUERY that gives the NAMES of BOTH the salesperson AND the customer FOR EACH ORDER AFTER the ORDER number

SELECT customer.CNAME,salespeople.SNAME,orders.onum
FROM customer
INNER JOIN orders
ON customer.cnum = orders.cnum
INNER JOIN salespeople
ON orders.snum = salespeople.snum;

3) COUNT the number of Salespeople registering orders FOR EACH day. (IF a salespersons has more THAN ONE ORDER ON given DAY, he OR she should be counted only once).

SELECT orders.odate, COUNT(DISTINCT(orders.snum)) FROM orders GROUP BY orders.odate;

4)  Find ALL orders attributed TO salespeople IN London.


SELECT orders.ONUM,orders.amitcost,orders.SNUM,orders.CNUM,orders.ODATE
FROM orders
INNER JOIN salespeople
ON orders.SNUM = salespeople.SNUM;

5) Find ALL salespeople who have customers WITH more THAN ONE current ORDER

SELECT SALESPEOPLE.SNAME, COUNT(*) FROM SALESPEOPLE INNER JOIN CUSTOMER ON SALESPEOPLE.SNUM = CUSTOMER.SNUM 
INNER JOIN ORDERS ON SALESPEOPLE.SNUM=ORDERS.SNUM GROUP BY SALESPEOPLE.SNAME HAVING COUNT(*)>1;

6) WRITE a QUERY that selects ALL customers whose NAMES begins WITH ‘C’.

SELECT CUSTOMER.CNAME
FROM CUSTOMER WHERE CUSTOMER.CNAME LIKE 's%';
7) WRITE a QUERY ON the Customers TABLE that will find the highest rating IN EACH city. Put the output IN this form: FOR the City (city) the highest rating IS: (rating)


8) WRITE a QUERY that selects EACH customer’s smallest ORDER

9) WRITE a QUERY that selects the FIRST customer IN alphabetical ORDER whose NAME begins WITH G

SELECT CUSTOMER.CNAME 
FROM customer
WHERE CUSTOMER.CNAME  LIKE 'G%';

10) WRITE a QUERY that counts the number of different non NULL city VALUES IN the Customers TABLE

SELECT COUNT(CITY) 
FROM customer
WHERE city IS NOT NULL;

11)  Find the average amount FROM the Orders table.

SELECT AVG(amitcost) FROM orders; 

12)  Find ALL customers who are NOT located IN San Jose AND whose rating IS above 200.

SELECT customer.CNAME
FROM customer
WHERE customer.city != 'SANJOSE' AND customer.rating > 200;

13)   Does the customer who has placed the maximum number of orders have the maximum rating?


14) Find ALL records IN the Customer TABLE WITH NULL VALUES IN the city COLUMN

SELECT * 
FROM customer WHERE customer.city = NULL;

15) Arrange the Orders TABLE BY descending customer number.

SELECT * FROM orders
ORDER BY orders.cnum DESC;

16) Find which salespeople currently have orders IN the Orders table.

SELECT * 
FROM salespeople
INNER JOIN 
orders
ON orders.snum = salespeople.snum;

17) Find the NAMES AND numbers of ALL salespeople who had more the ONE customer.

SELECT salespeople.snum,salespeople.sname
FROM salespeople
INNER JOIN
customer
ON salespeople.snum = customer.snum AND 

18) COUNT the orders of EACH of the salespeople AND output the results IN descending order.

SELECT salespeople.sname,COUNT(*) 
FROM orders
INNER JOIN 
salespeople
ON salespeople.snum = orders.snum
GROUP BY orders.snum
ORDER BY orders.snum DESC;

19) LIST the Customer TABLE IF AND only IF ONE OR more of the Customers IN the Customer TABLE are located IN San Jose.

SELECT * FROM 
customer 
WHERE customer.CITY="SANJOSE";

20)Find the largest ORDER taken BY EACH salesperson.


SELECT MAX(amitcost)
FROM orders
GROUP BY orders.snum;

21) Find customers IN San Jose who have a rating above 200.

SELECT * 
FROM CUSTOMER
WHERE city="SANJOSE" AND rating >200;

22) LIST ALL the orders of salesperson Motika FROM the Orders table.

SELECT * 
FROM orders
INNER JOIN
salespeople
ON orders.snum= salespeople.snum AND salespeople.sname='Motika';

23) Find salespeople who have multiple customers.

SELECT salespeople.snum,COUNT(customer.snum)
FROM salespeople
INNER JOIN
customer
ON salespeople.snum = customer.snum
GROUP BY salespeople.snum
HAVING COUNT(customer.snum) > 1;

24) Find salespeople WITH customers located IN their city.

SELECT salespeople.SNAME
FROM salespeople
INNER JOIN 
customer
ON salespeople.SNUM = customer.snum AND salespeople.city = customer.city;


25) Find the largest orders FOR serres AND Rifkin.

SELECT SALESPEOPLE.SNAME,MAX(amitcost)
FROM orders
INNER JOIN SALESPEOPLE
ON orders.SNUM = SALESPEOPLE.snum AND SALESPEOPLE.SNAME ='SERRES'
UNION ALL 
SELECT SALESPEOPLE.SNAME,MAX(amitcost)
FROM orders
INNER JOIN SALESPEOPLE
ON orders.SNUM = SALESPEOPLE.snum AND SALESPEOPLE.SNAME ='RIKKLIN';


26) Find ALL salespeople that are located IN either Barcelona OR London.

SELECT * 
FROM salespeople
WHERE SALESPEOPLE.city='Barcelona' OR SALESPEOPLE.city='London';

27) Find ALL salespeople WITH only ONE customer.

SELECT salespeople.SNAME
FROM salespeople
INNER JOIN 
CUSTOMER
ON salespeople.SNUM = customer.snum
GROUP BY salespeople.SNAME
HAVING COUNT(salespeople.SNUM) =1;

28)Find salespeople whose sales IS greater the AVG sales

SELECT salespeople.SNAME
FROM salespeople
INNER JOIN 
orders
ON salespeople.SNUM = orders.snum 
GROUP BY orders.amitcost
HAVING AVG(orders.amitcost) > orders.amitcost;