/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to drop all objects in the database
** --------------------------------------------------------------------------*/

-- Tables 
DROP TABLE employee purge;
DROP TABLE tble purge;
DROP TABLE bill purge;
DROP TABLE customer purge;
DROP TABLE food purge;
DROP TABLE iMenu purge;
DROP TABLE ordr purge;


/*
DROP TABLE deptLocation purge;
DROP TABLE project purge;
DROP TABLE employee CASCADE CONSTRAINTS purge;
DROP TABLE department purge;
*/

-- Views for query 
/*
DROP VIEW projectHours;
DROP VIEW projectExEmp;
DROP VIEW empDependentCount;
*/
