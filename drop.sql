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

--Tables w/Foriegn Key
DROP TABLE fCategory purge;
DROP TABLE cooks purge;
DROP TABLE billDisc purge;
DROP TABLE itemDisc purge;
DROP TABLE pay purge;
DROP TABLE waiter purge;
DROP TABLE vists purge;

-- Tables w/o Foriegn Key
DROP TABLE food purge;
DROP TABLE employee purge;
DROP TABLE tble purge;
DROP TABLE bill purge;
DROP TABLE customer purge;
DROP TABLE iMenu purge;
DROP TABLE ordr  purge;
DROP TABLE rest purge;



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
