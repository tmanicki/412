/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** 	Unsupervised Employees 
** 	Retrieve information for each employee who does not have a supervisor.
** --------------------------------------------------------------------------*/

SELECT M.iName, M.iDescription, M.productID, M.price, M.AvgRating
FROM iMenu M
WHERE M.AvgRating >=4
ORDER BY AvgRating desc;