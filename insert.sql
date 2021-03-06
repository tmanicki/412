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
INSERT INTO rest VALUES('Timothy Tacos','Mexican');


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
UPDATE employee SET eName = 'Iron Man' WHERE employeeID = 9;
UPDATE employee SET eStatus = 'Waiter' WHERE employeeID = 8;
UPDATE employee SET eName = '007' WHERE employeeID = 10;
UPDATE employee SET eName = 'Black Widow' WHERE employeeID = 1;
UPDATE employee SET eStatus = 'Cook' WHERE employeeID = 10;


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
INSERT INTO customer VALUES('David L.',4805226878,'spock@gmail.com');
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
UPDATE customer SET cName = 'Indiana Jones' WHERE cPhone = 4805226878;

/*
** ----------------------------------------------------------------------------
** script to insert data into the fCategory table 
(ItemCategory = 'Entre' or ItemCategory = 'Desert' or ItemCategory = 'Drink' or ItemCategory = 'Appitizer' or ItemCategory = 'Salad')
** --------------------------------------------------------------------------*/

INSERT INTO fCategory VALUES(1,'Entre');
INSERT INTO fCategory VALUES(2,'Entre');
INSERT INTO fCategory VALUES(3,'Entre');
INSERT INTO fCategory VALUES(4,'Appitizer');
INSERT INTO fCategory VALUES(5,'Drink');
INSERT INTO fCategory VALUES(6,'Drink');
INSERT INTO fCategory VALUES(7,'Appitizer');
INSERT INTO fCategory VALUES(8,'Appitizer');
INSERT INTO fCategory VALUES(9,'Entre');
INSERT INTO fCategory VALUES(10,'Entre');

/*
** ----------------------------------------------------------------------------
** updates in the fCategory table 
** --------------------------------------------------------------------------*/
UPDATE fCategory SET ItemCategory = 'Desert' WHERE productID = 10;
UPDATE fCategory SET ItemCategory = 'Salad' WHERE productID = 9;
UPDATE fCategory SET ItemCategory = 'Appitizer' WHERE productID = 1;
UPDATE fCategory SET ItemCategory = 'Entre' WHERE productID = 7;
UPDATE fCategory SET ItemCategory = 'Appitizer' WHERE productID = 3;


/*
** ----------------------------------------------------------------------------
** script to insert data into the food table 
** Date- This datatype contains the datetime fields YEAR, MONTH, DAY, HOUR, MINUTE, and SECOND.
** --------------------------------------------------------------------------*/

INSERT INTO food VALUES('Completed','12/01/2015 13:04:55','12/01/2015 13:34:24',1,1,2);
                         
INSERT INTO food VALUES('Ordered','11/22/2015 14:12:31','11/22/2015 15:04:23',2,9,3);
                         
INSERT INTO food VALUES('In Progress','12/04/2015 10:33:21','12/04/2015 11:02:59',3,5,5);
                         
INSERT INTO food VALUES('Ordered','11/22/2015 14:02:12','11/22/2015 14:45:28',4,9,3);
                         
INSERT INTO food VALUES('Completed', '10/21/2015 11:57:47','10/21/2015 12:43:42',5,8,19);
                         
INSERT INTO food VALUES('Ordered','11/19/2015 16:18:39','11/19/2015 17:12:25',6,10,5);
                         
INSERT INTO food VALUES('Completed','12/21/2015 18:49:31','12/21/2015 19:12:58',7,1,2);
                         
INSERT INTO food VALUES('Ordered','11/22/2015 14:12:31','11/22/2015 15:04:23',8,9,2);
                         
INSERT INTO food VALUES('Completed','12/01/2015 13:04:55','12/01/2015 13:34:24',9,1,2);
                         
INSERT INTO food VALUES('Ordered','11/22/2015 14:12:31','11/22/2015 15:04:23',10,9,2);

/*
** ----------------------------------------------------------------------------
** updates in the food table 
** --------------------------------------------------------------------------*/
UPDATE food SET productID = 8 WHERE instanceID = 1;
UPDATE food SET StartTime = '12/06/2015 10:33:21' WHERE instanceID = 3;
UPDATE food SET FinishTime = '12/06/2015 11:02:59' WHERE instanceID = 3;
UPDATE food SET fStatus = 'Completed' WHERE instanceID = 4;
UPDATE food SET orderID = 11 WHERE instanceID = 10;

/*
** ----------------------------------------------------------------------------
** script to insert data into the billDisc table 
** --------------------------------------------------------------------------*/

INSERT INTO billDisc VALUES(7,2,32.45);
INSERT INTO billDisc VALUES(7,1,2.52);
INSERT INTO billDisc VALUES(2,3,21.25);
INSERT INTO billDisc VALUES(2,4,6.25);
INSERT INTO billDisc VALUES(2,5,6);
INSERT INTO billDisc VALUES(7,7,.23);
INSERT INTO billDisc VALUES(7,6,9.99);
INSERT INTO billDisc VALUES(7,9,8);
INSERT INTO billDisc VALUES(7,8,3.45);
INSERT INTO billDisc VALUES(2,10,2.15);

/*
** ----------------------------------------------------------------------------
** updates in the billDisc table 
** --------------------------------------------------------------------------*/
UPDATE billDisc SET employeeID = 2 WHERE billID = 8;
UPDATE billDisc SET employeeID = 2 WHERE billID = 10;
UPDATE billDisc SET amount = 7 WHERE billID = 7;
UPDATE billDisc SET amount = 12.2 WHERE billID = 6;
UPDATE billDisc SET amount = 5.24 WHERE billID = 5;

/*
** ----------------------------------------------------------------------------
** script to insert data into the itemDisc table 
** --------------------------------------------------------------------------*/

INSERT INTO itemDisc VALUES(2,10,2.2);
INSERT INTO itemDisc VALUES(7,9,1.25);
INSERT INTO itemDisc VALUES(2,8,1.52);
INSERT INTO itemDisc VALUES(7,7,6.25);
INSERT INTO itemDisc VALUES(2,6,6.66);
INSERT INTO itemDisc VALUES(7,5,3.52);
INSERT INTO itemDisc VALUES(2,4,3);
INSERT INTO itemDisc VALUES(7,3,5.43);
INSERT INTO itemDisc VALUES(2,2,1.28);
INSERT INTO itemDisc VALUES(7,1,3.45);


/*
** ----------------------------------------------------------------------------
** updates in the itemDisc table 
** --------------------------------------------------------------------------*/
UPDATE itemDisc SET employeeID = 7 WHERE productID = 2;
UPDATE itemDisc SET employeeID = 7 WHERE productID = 4;
UPDATE itemDisc SET amount = 2.52 WHERE productID = 6;
UPDATE itemDisc SET amount = 3.22 WHERE productID = 8;
UPDATE itemDisc SET amount = 2.15 WHERE productID = 10;

/*
** ----------------------------------------------------------------------------
** script to insert data into the cooks table 
** --------------------------------------------------------------------------*/


INSERT INTO cooks VALUES(3,1, 10);
INSERT INTO cooks VALUES(3,2, 23);
INSERT INTO cooks VALUES(5,3, 22.1);
INSERT INTO cooks VALUES(9,4, 4.5);
INSERT INTO cooks VALUES(10,5, 15.2);
INSERT INTO cooks VALUES(10,6, 12.3);
INSERT INTO cooks VALUES(5,7, 12.3);
INSERT INTO cooks VALUES(5,8, 5.3);
INSERT INTO cooks VALUES(9,9, 23.1);
INSERT INTO cooks VALUES(10,10, 2.3);

/*
** ----------------------------------------------------------------------------
** updates in the itemDisc table 
** --------------------------------------------------------------------------*/
UPDATE cooks SET employeeID = 9 WHERE instanceID = 1;
UPDATE cooks SET employeeID = 3 WHERE instanceID = 3;
UPDATE cooks SET CookTime = 13.5 WHERE instanceID = 7;
UPDATE cooks SET employeeID = 5 WHERE instanceID = 5;
UPDATE cooks SET CookTime = 12.39 WHERE instanceID = 9;

/*
** ----------------------------------------------------------------------------
** script to insert data into the pay table 
** --------------------------------------------------------------------------*/

INSERT INTO pay VALUES(1,4805226878,1.25,'Cash');
INSERT INTO pay VALUES(2,9293121548,22,'Check');
INSERT INTO pay VALUES(3,8521234567,1.2,'Card');
INSERT INTO pay VALUES(4,4803125846,12,'Cash');
INSERT INTO pay VALUES(5,1234566699,32.42,'Check');
INSERT INTO pay VALUES(6,5861329645,12.2,'Card');
INSERT INTO pay VALUES(7,8521554455,9.52,'Card');
INSERT INTO pay VALUES(8,8569861234,25.9,'Cash');
INSERT INTO pay VALUES(9,8521234567,12.32,'Check');
INSERT INTO pay VALUES(10,4805226878,9.25,'Card');

/*
** ----------------------------------------------------------------------------
** updates in the pay table 
** --------------------------------------------------------------------------*/
UPDATE pay SET paymentType = 'Check' WHERE billID = 10;
UPDATE pay SET cPhone = 4805226878 WHERE billID = 3;
UPDATE pay SET tip = 2.50 WHERE billID = 7;
UPDATE pay SET tip = 3 WHERE billID = 5;
UPDATE pay SET cPhone = 8569861234 WHERE billID = 9;

/*
** ----------------------------------------------------------------------------
** script to insert data into the waiter table 
** --------------------------------------------------------------------------*/

INSERT INTO waiter VALUES(1,10);
INSERT INTO waiter VALUES(4,1);
INSERT INTO waiter VALUES(3,9);
INSERT INTO waiter VALUES(4,2);
INSERT INTO waiter VALUES(6,8);
INSERT INTO waiter VALUES(6,3);
INSERT INTO waiter VALUES(7,7);
INSERT INTO waiter VALUES(8,4);
INSERT INTO waiter VALUES(6,6);
INSERT INTO waiter VALUES(2,5);


/*
** ----------------------------------------------------------------------------
** updates in the pay table 
** --------------------------------------------------------------------------*/
UPDATE waiter SET employeeID = 4 WHERE tNumber = 10;
UPDATE waiter SET employeeID = 8 WHERE tNumber = 3;
UPDATE waiter SET employeeID = 6 WHERE tNumber = 7;
UPDATE waiter SET employeeID = 4 WHERE tNumber = 5;
UPDATE waiter SET employeeID = 6 WHERE tNumber = 9;

/*
** ----------------------------------------------------------------------------
** script to insert data into the vists table 
** --------------------------------------------------------------------------*/

INSERT INTO vists VALUES(4803125846,'Timothy Tacos',
TO_DATE('11/27/2015','mm/dd/yyyy') ,TO_DATE('11/27/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(4805226878,'Timothy Tacos',
TO_DATE('11/27/2015','mm/dd/yyyy') ,NULL );

INSERT INTO vists VALUES(4805226878,'Timothy Tacos',
TO_DATE('12/15/2015','mm/dd/yyyy') ,NULL );

INSERT INTO vists VALUES(9293121548,'Timothy Tacos',
TO_DATE('11/30/2015','mm/dd/yyyy') ,TO_DATE('11/30/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(8521234567,'Timothy Tacos',
TO_DATE('10/11/2015','mm/dd/yyyy') ,TO_DATE('10/11/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(5256369512,'Timothy Tacos',
TO_DATE('12/27/2015','mm/dd/yyyy') ,TO_DATE('12/27/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(8569861234,'Timothy Tacos',
TO_DATE('09/02/2015','mm/dd/yyyy') ,NULL );

INSERT INTO vists VALUES(8569861234,'Timothy Tacos',
TO_DATE('11/19/2015','mm/dd/yyyy') ,TO_DATE('11/19/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(5861329645,'Timothy Tacos',
TO_DATE('11/27/2015','mm/dd/yyyy') ,TO_DATE('11/27/2015','mm/dd/yyyy') );

INSERT INTO vists VALUES(1234566699,'Timothy Tacos',
TO_DATE('12/15/2015','mm/dd/yyyy') ,NULL );


/*
** ----------------------------------------------------------------------------
** updates in the vists table 
** --------------------------------------------------------------------------*/
UPDATE vists SET tExit = TO_DATE('12/15/2015','mm/dd/yyyy') 
WHERE cPhone = 1234566699 AND tEnter= TO_DATE('12/15/2015','mm/dd/yyyy');

UPDATE vists SET cPhone = 4805102366 
WHERE cPhone = 8569861234 AND tEnter= TO_DATE('11/19/2015','mm/dd/yyyy');

UPDATE vists SET tEnter = TO_DATE('12/13/2015','mm/dd/yyyy') 
WHERE cPhone = 4805226878 AND tEnter= TO_DATE('11/27/2015','mm/dd/yyyy');

UPDATE vists SET tExit = TO_DATE('12/13/2015','mm/dd/yyyy')
WHERE cPhone = 4805226878 AND tEnter= TO_DATE('12/13/2015','mm/dd/yyyy');

UPDATE vists SET cPhone = 4805102366
WHERE cPhone = 4805226878 AND tEnter= TO_DATE('12/13/2015','mm/dd/yyyy');

