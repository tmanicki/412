/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** 	Popular Itmes 
**
** 	Retrieve information on items that were considered popular. The popular
**	status for this restuarnt is any item's average rating is >=4
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