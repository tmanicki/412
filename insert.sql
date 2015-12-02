/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/




/*
** ----------------------------------------------------------------------------
** script to insert data into the iMenu table 
** --------------------------------------------------------------------------*/
INSERT INTO iMenu VALUES('Cheese Pizza','it is really cheese',350,20.5,1,32, 5);
INSERT INTO iMenu VALUES('Hawaiian Pizza','aloha friends',370,19.99,2,22, 3.4);
INSERT INTO iMenu VALUES('Heart Killer Pizza','death is near',1450,30,3,2, 2.3);
INSERT INTO iMenu VALUES('Wings','Hot, BBQ, or Tangy',120,10.1,4,15, 5);
INSERT INTO iMenu VALUES('Coke','soda',210,3,5,290, 4);
INSERT INTO iMenu VALUES('Ice Tea','not hot, ice',5,3.75,6,170, 4.5);
INSERT INTO iMenu VALUES('Tacos','is it Tuesday yet?',240,12.45,7,30, 1);
INSERT INTO iMenu VALUES('Hot Dog','Mustard or Ketchup?',500,9.99,8,15, 3.4);
INSERT INTO iMenu VALUES('PBJ','classic',20,5,9,50,3.2);
INSERT INTO iMenu VALUES('Steak','finest at fine',320,30.99,10,25,4.4);

/*
** ----------------------------------------------------------------------------
** updates in the iMenu table 
** --------------------------------------------------------------------------*/
UPDATE iMenu SET price = 25 WHERE productID=4;
UPDATE iMenu SET iName = 'Gelato' WHERE productID = 10;
UPDATE iMenu SET iDescription = 'Best in the West' WHERE productID = 7;
UPDATE iMenu SET calories = 220 WHERE productID = 1;
UPDATE iMenu SET TimesOrdered = 68 WHERE productID = 9;



/*
** ----------------------------------------------------------------------------
** script to insert data into the employee table 
** --------------------------------------------------------------------------*/
INSERT INTO employee VALUES(1,'Josh P.','Terminated');
INSERT INTO employee VALUES(2,'David E.','Manager');
INSERT INTO employee VALUES(3,'Jessie L.','Cook');
INSERT INTO employee VALUES(4,'Norman B.','Waiter');
INSERT INTO employee VALUES(5,'Stan Lee','Cook');
INSERT INTO employee VALUES(6,'The Hulk','Waiter');
INSERT INTO employee VALUES(7,'Obi-Wan','Manager');
INSERT INTO employee VALUES(8,'Captain Rogers','Manager');
INSERT INTO employee VALUES(9,'Tony Stark','Cook');
INSERT INTO employee VALUES(10,'James Bond','Waiter');

/*
** ----------------------------------------------------------------------------
** updates in the employee table 
** --------------------------------------------------------------------------*/
UPDATE employee SET eName = 'Iorn Man' WHERE employeeID = 9;
UPDATE employee SET eStatus = 'Waiter' WHERE employeeID = 8;
UPDATE employee SET eName = '007' WHERE employeeID = 10;
UPDATE employee SET eName = 'Black Widow' WHERE employeeID = 1;
UPDATE employee SET eStatus = 'Cook' WHERE employeeID = 1;


/*
** ----------------------------------------------------------------------------
** script to insert data into the order table 
** --------------------------------------------------------------------------*/
INSERT INTO ordr VALUES(1);
INSERT INTO ordr VALUES(2);
INSERT INTO ordr VALUES(3);
INSERT INTO ordr VALUES(4);
INSERT INTO ordr VALUES(5);
INSERT INTO ordr VALUES(6);
INSERT INTO ordr VALUES(7);
INSERT INTO ordr VALUES(8);
INSERT INTO ordr VALUES(9);
INSERT INTO ordr VALUES(10);

/*
** ----------------------------------------------------------------------------
** updates in the order table 
** --------------------------------------------------------------------------*/
UPDATE ordr SET orderID = 19 WHERE orderID = 9;
UPDATE ordr SET orderID = 18 WHERE orderID = 8;
UPDATE ordr SET orderID = 11 WHERE orderID = 10;
UPDATE ordr SET orderID = 10 WHERE orderID = 1;
UPDATE ordr SET orderID = 17 WHERE orderID = 7;

/*
** ----------------------------------------------------------------------------
** script to insert data into the tble table 
** --------------------------------------------------------------------------*/
INSERT INTO tble VALUES(1, 4, 5);
INSERT INTO tble VALUES(2, 0, 6);
INSERT INTO tble VALUES(3, 2, 2);
INSERT INTO tble VALUES(4, 0, 5);
INSERT INTO tble VALUES(5, 0, 3);
INSERT INTO tble VALUES(6, 5, 5);
INSERT INTO tble VALUES(7, 2, 2);
INSERT INTO tble VALUES(8, 6, 8);
INSERT INTO tble VALUES(9, 4, 6);
INSERT INTO tble VALUES(10, 3, 3);

/*
** ----------------------------------------------------------------------------
** updates in the tble table 
** --------------------------------------------------------------------------*/
UPDATE tble SET mSize = 4 WHERE tNumber = 5;
UPDATE tble SET PartySize = 5 WHERE tNumber = 2;
UPDATE tble SET PartySize = 2 WHERE tNumber = 5;
UPDATE tble SET mSize = 3 WHERE tNumber = 7;
UPDATE tble SET PartySize = 3 WHERE tNumber = 4;

/*
** ----------------------------------------------------------------------------
** script to insert data into the bill table 
** --------------------------------------------------------------------------*/

INSERT INTO bill VALUES(10,1,32.50);
INSERT INTO bill VALUES(2.98,2,22.45);
INSERT INTO bill VALUES(15.54,3,10.01);
INSERT INTO bill VALUES(1, 4 ,20.0);
INSERT INTO bill VALUES(5.3,5,24.20);
INSERT INTO bill VALUES(5.55,6,11.99);
INSERT INTO bill VALUES(34.45,7,100.30);
INSERT INTO bill VALUES(4.45,8,32.25);
INSERT INTO bill VALUES(7.89,9,18.52);
INSERT INTO bill VALUES(9.87,10,93.25);

/*
** ----------------------------------------------------------------------------
** updates in the bill table 
** --------------------------------------------------------------------------*/
UPDATE bill SET tax = 12.2 WHERE billID = 2;
UPDATE bill SET total = 59.62 WHERE billID = 9;
UPDATE bill SET tax = 1.23 WHERE billID = 1;
UPDATE bill SET total = 132.56 WHERE billID = 5;
UPDATE bill SET tax = 3.52 WHERE billID = 10;

/*
** ----------------------------------------------------------------------------
** script to insert data into the customer table 
** --------------------------------------------------------------------------*/

INSERT INTO customer VALUES('Jason k.',4803125846,'jak@gmail.com');
INSERT INTO customer VALUES('David L.',4805226878,'dl@gmail.com');
INSERT INTO customer VALUES('King Kong',9293121548,'kk@yahoo.com');
INSERT INTO customer VALUES('Sara R.',8521234567,'sr@gmail.com');
INSERT INTO customer VALUES('Odin',1235218564,'odin@cox.net');
INSERT INTO customer VALUES('Thor',8569861234,'thor@gmail.com');
INSERT INTO customer VALUES('Darth Vader',5861329645,'dv@gmail.com');
INSERT INTO customer VALUES('Bon Jovi',4805102366,'bonjov@gmail.com');
INSERT INTO customer VALUES('Rwby',8521554455,'rby@gmail.com');
INSERT INTO customer VALUES('Broady Autumn',1234566699,'baba@gmail.com');

/*
** ----------------------------------------------------------------------------
** updates in the bill table 
** --------------------------------------------------------------------------*/
UPDATE customer SET cName = 'Sir Thor' WHERE cPhone = 8569861234;
UPDATE customer SET cEmail = 'sara@live.com' WHERE cPhone = 8521234567;
UPDATE customer SET cPhone = 5256369512 WHERE cPhone = 1235218564;
UPDATE customer SET cName = 'Luke Skywalker' WHERE cPhone = 5861329645;
UPDATE customer SET cEmail = 'Indiana Jones' WHERE cPhone = 4805226878;

/*
** ----------------------------------------------------------------------------
** script to insert data into the food table 
** Date- This datatype contains the datetime fields YEAR, MONTH, DAY, HOUR, MINUTE, and SECOND.
** --------------------------------------------------------------------------*/

INSERT INTO food VALUES('Completed',TO_DATE('12/01/2015 13:04:55','mm/dd/yyyy HH24:MI:SS'),
                         TO_DATE('12/01/2015 13:34:24','mm/dd/yyyy hh24:mi:ss'),1,1,2);
                         
INSERT INTO food VALUES('Ordered',TO_DATE('11/22/2015 14:12:31','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('11/22/2015 15:04:23','mm/dd/yyyy hh24:mi:ss'),2,9,3);
                         
INSERT INTO food VALUES('In Progress',TO_DATE('12/04/2015 10:33:21','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('12/04/2015 11:02:59','mm/dd/yyyy hh24:mi:ss'),3,5,5);
                         
INSERT INTO food VALUES('Ordered',TO_DATE('11/22/2015 14:02:12','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('11/22/2015 14:45:28','mm/dd/yyyy hh24:mi:ss'),4,9,3);
                         
INSERT INTO food VALUES('Completed',TO_DATE('10/21/2015 11:57:47','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('10/21/2015 12:43:42','mm/dd/yyyy hh24:mi:ss'),5,8,19);
                         
INSERT INTO food VALUES('Ordered',TO_DATE('11/19/2015 16:18:39','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('11/19/2015 17:12:25','mm/dd/yyyy hh24:mi:ss'),6,10,5);
                         
INSERT INTO food VALUES('Completed',TO_DATE('12/21/2015 18:49:31','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('12/21/2015 19:12:58','mm/dd/yyyy hh24:mi:ss'),7,1,2);
                         
INSERT INTO food VALUES('Ordered',TO_DATE('11/22/2015 14:12:31','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('11/22/2015 15:04:23','mm/dd/yyyy hh24:mi:ss'),8,9,2);
                         
INSERT INTO food VALUES('Completed',TO_DATE('12/01/2015 13:04:55','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('12/01/2015 13:34:24','mm/dd/yyyy hh24:mi:ss'),9,1,2);
                         
INSERT INTO food VALUES('Ordered',TO_DATE('11/22/2015 14:12:31','mm/dd/yyyy hh24:mi:ss'),
                         TO_DATE('11/22/2015 15:04:23','mm/dd/yyyy hh24:mi:ss'),10,9,2);

/*
** ----------------------------------------------------------------------------
** updates in the food table 
** --------------------------------------------------------------------------*/
UPDATE food SET productID = 8 WHERE instanceID = 1;
UPDATE food SET StartTime = TO_DATE('12/06/2015 10:33:21','mm/dd/yyyy hh24:mi:ss') WHERE instanceID = 3;
UPDATE food SET FinishTime = TO_DATE('12/06/2015 11:02:59','mm/dd/yyyy hh24:mi:ss') WHERE instanceID = 3;
UPDATE food SET fStatus = 'Completed' WHERE instanceID = 4;
UPDATE food SET orderID = 11 WHERE instanceID = 10;

/*
** ----------------------------------------------------------------------------
** script to insert data into the cooks table 
** --------------------------------------------------------------------------

INSERT INTO cooks VALUES(3,10,19);*/

/*
** ----------------------------------------------------------------------------
** script to insert data into the billDisc table 
** --------------------------------------------------------------------------*/

INSERT INTO billDisc VALUES(1,2,32.45);
INSERT INTO billDisc VALUES(3,1,2.52);
INSERT INTO billDisc VALUES(5,3,21.25);
INSERT INTO billDisc VALUES(9,4,6.25);
INSERT INTO billDisc VALUES(9,5,6);
INSERT INTO billDisc VALUES(9,7,.23);
INSERT INTO billDisc VALUES(5,6,9.99);
INSERT INTO billDisc VALUES(3,9,8);
INSERT INTO billDisc VALUES(3,8,3.45);
INSERT INTO billDisc VALUES(1,10,2.15);

/*
** ----------------------------------------------------------------------------
** updates in the billDisc table 
** --------------------------------------------------------------------------*/
UPDATE billDisc SET employeeID = 1 WHERE employeeID = 8;
UPDATE billDisc SET employeeID = 9 WHERE employeeID = 10;
UPDATE billDisc SET amount = 7 WHERE employeeID = 7;
UPDATE billDisc SET amount = 12.2 WHERE employeeID = 6;
UPDATE billDisc SET amount = 5.24 WHERE employeeID = 5;



                         