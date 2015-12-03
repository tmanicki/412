/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** 	Popular Itmes by ranking
**
** 	Retrieve information on items that were considered popular by ranking. 
**  The popular status for this restuarnt is any item's average rating is >=4
** --------------------------------------------------------------------------*/


SELECT M.iName, M.iDescription, M.productID, M.price, M.AvgRating
FROM iMenu M
WHERE M.AvgRating >=4
ORDER BY AvgRating desc;

/*
** ----------------------------------------------------------------------------
** 	Popular Itmes by amount ordered
**
** 	Retrieve information on items that were considered popular by times ordered. 
**  The popular status for this restuarnt is any item ordered >=50
** --------------------------------------------------------------------------*/


SELECT M.iName, M.iDescription, M.productID, M.price, M.TimesOrdered
FROM iMenu M
WHERE M.TimesOrdered >=50
ORDER BY TimesOrdered desc;

/*
** ----------------------------------------------------------------------------
** 	Chefs Efficentcy 
**
** 	Retrieve information on chefs who average cook time is less then or 
**  equal to 15 min 
** --------------------------------------------------------------------------*/


SELECT E.eName, E.employeeID, AVG(C.CookTime) AS AvgCookTIME
FROM employee E, cooks C
WHERE C.employeeID=E.employeeID 
GROUP BY E.eName, E.employeeID
HAVING AVG(C.CookTime) <= 15
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	All Chef Employees 
**
** 	Retrieve information on every employee who is a chef
** --------------------------------------------------------------------------*/

SELECT eName AS Chef_Name, employeeID
FROM employee
WHERE eStatus = 'Cook'
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	All Chef Manager 
**
** 	Retrieve information on every employee who is a manager
** --------------------------------------------------------------------------*/

SELECT eName AS Manager_Name, employeeID
FROM employee
WHERE eStatus = 'Manager'
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	All Chef Waiter 
**
** 	Retrieve information on every employee who is a waiter
** --------------------------------------------------------------------------*/

SELECT eName AS Waiter_Name, employeeID
FROM employee
WHERE eStatus = 'Waiter'
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	All Chef Terminated 
**
** 	Retrieve information on every employee who has been terminated
** --------------------------------------------------------------------------*/

SELECT eName AS Terminated_Emp_Name, employeeID
FROM employee
WHERE eStatus = 'Terminated'
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	Chefs Average Cook Time 
**
** 	Retrieve information on chefs average cook time.
** --------------------------------------------------------------------------*/


SELECT E.eName, E.employeeID, AVG(C.CookTime) AS AvgCookTime
FROM employee E, cooks C
WHERE C.employeeID=E.employeeID 
GROUP BY E.eName, E.employeeID
ORDER BY eName asc;

/*
** ----------------------------------------------------------------------------
** 	Healthy List
**
** 	Retrieve information on items with a low calorie count, or anything with 
**  a calorie count of <= 150
** --------------------------------------------------------------------------*/

SELECT iName AS Item_Name, iDescription AS Description, calories, productID
FROM iMenu
WHERE calories <= 150
ORDER BY calories asc;

/*
** ----------------------------------------------------------------------------
** 	Entre List
**
** 	Retrieve information on items that are considered Entres
** --------------------------------------------------------------------------*/

SELECT M.iName AS Entre_Name, M.iDescription AS Description, M.calories, M.productID
FROM iMenu M, fCategory F
Where F.ItemCategory='Entre' AND F.productID=M.productID
ORDER By M.iName asc;

/*
** ----------------------------------------------------------------------------
** 	Desert List
**
** 	Retrieve information on items that are considered Deserts
** --------------------------------------------------------------------------*/

SELECT M.iName AS Desert_Name, M.iDescription AS Description, M.calories, M.productID
FROM iMenu M, fCategory F
Where F.ItemCategory='Desert' AND F.productID=M.productID
ORDER By M.iName asc;

/*
** ----------------------------------------------------------------------------
** 	Drink List
**
** 	Retrieve information on items that are considered Drinks
** --------------------------------------------------------------------------*/

SELECT M.iName AS Drink_Name, M.iDescription AS Description, M.calories, M.productID
FROM iMenu M, fCategory F
Where F.ItemCategory='Drink' AND F.productID=M.productID
ORDER By M.iName asc;

/*
** ----------------------------------------------------------------------------
** 	Salad List
**
** 	Retrieve information on items that are considered Salads
** --------------------------------------------------------------------------*/

SELECT M.iName AS Salad_Name, M.iDescription AS Description, M.calories, M.productID
FROM iMenu M, fCategory F
Where F.ItemCategory='Salad' AND F.productID=M.productID
ORDER By M.iName asc;

/*
** ----------------------------------------------------------------------------
** 	Appitizer List
**
** 	Retrieve information on items that are considered Appitizers
** --------------------------------------------------------------------------*/

SELECT M.iName AS App_Name, M.iDescription AS Description, M.calories, M.productID
FROM iMenu M, fCategory F
Where F.ItemCategory='Appitizer' AND F.productID=M.productID
ORDER By M.iName asc;

/*
** ----------------------------------------------------------------------------
** 	Ultimate Popularity
**
** 	Retrieve information on items that are SUPR POPULART
**  That means >=4 in average rating AND ordered >= 50
** --------------------------------------------------------------------------*/

SELECT M.iName, M.iDescription, M.productID, M.price, M.AvgRating, M.TimesOrdered
FROM iMenu M
WHERE M.AvgRating >=4 AND TimesOrdered>=50
ORDER BY AvgRating desc;

/*
** ----------------------------------------------------------------------------
** 	Customer Visits
**
** 	Retrieve information on how many times a custoemr has visted
** --------------------------------------------------------------------------*/

SELECT C.cName AS Name, C.cPhone AS Phone_Num, COUNT(*) AS Vists
FROM customer C, vists V
Where V.cPhone=C.cPhone
GROUP BY C.cName, C.cPhone
ORDER BY COUNT(*) asc;