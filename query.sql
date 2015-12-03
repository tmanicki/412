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