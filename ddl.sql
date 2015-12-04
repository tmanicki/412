/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to create the rest table 
** Description: this table gives the name (rName, character) 
** and type (rType, character) of the restaurant
** --------------------------------------------------------------------------*/

CREATE TABLE rest (
	rName			VARCHAR2(20)	NOT NULL PRIMARY KEY,
	rType			VARCHAR2(20)	NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the item table 
** Description: This is a menu for the database. contains the following:

	iName- name of the food/drink, character
	iDescription- describes the item on the menu, character
	calories- gives the amount of calories of that item, integer
	price- how much that item is worth, float
	productID- This is the numerical represntation of the item, Integer
	TimesOrdered-	how many times total this item has been ordered, integer
	AvgRating- the averaged number of that item rating
** --------------------------------------------------------------------------*/

CREATE TABLE iMenu (
	iName			VARCHAR2(20)	NOT NULL,
	iDescription			VARCHAR2(20)	NOT NULL,
	calories		INTEGER,
	price			  FLOAT NOT NULL,
	productID		INTEGER		PRIMARY KEY,
	TimesOrdered 		INTEGER,
	AvgRating FLOAT
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the employee table 
** Description: this is a listing of all employees, past and present. Contains:

	employeeID- numerical rep for employee, Integer
	eName- name of that employee
	eStatus- the current position of the employee (manager, waiter, or  cook)
	 		 or if they are terminated
	
** --------------------------------------------------------------------------*/

CREATE TABLE employee (
	employeeID INTEGER PRIMARY KEY,
  eName      VARCHAR (20) NOT NULL,
  eStatus     VARCHAR (20) NOT NULL CHECK (eStatus = 'Terminated' OR 
  eStatus = 'Manager' OR eStatus = 'Waiter' OR eStatus = 'Cook')
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the ordr table 
** Description: Lister of all order ID's (orderID, Integer)
** --------------------------------------------------------------------------*/

CREATE TABLE ordr (
	orderID INTEGER PRIMARY KEY 
);

SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the tble table (tble=table, table is reserved word)
** Description: lists all tables in restaurant, contains:

	tNumber- the numerical value of each table, integer
	PartySize- how many individuals are currently seated, integer
	mSize-how many the table can hold max, integer
** --------------------------------------------------------------------------*/

CREATE TABLE tble (
	tNumber   INTEGER PRIMARY KEY,
  PartySize INTEGER,
  mSize     INTEGER NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the bill table
** Description: lists the bill, including tax and total. Contains:

	billID- the numerical value that rep that specific bill, integer
	tax- how much taxes are, float
	total- how much the bill is total, float
** --------------------------------------------------------------------------*/

CREATE TABLE bill (
	tax       FLOAT NOT NULL,
  billID    INTEGER NOT NULL PRIMARY KEY,
  total     FLOAT NOT NULL
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the customer table
** Description: lists all customers that have visted and logged into they system
			    contains:

	cName- name of the customer, Character
	cPhone- numerical rep of the customer and their personal number, integer
	cEmail- the email of the customer
** --------------------------------------------------------------------------*/

CREATE TABLE customer (
	cName   VARCHAR (20)  NOT NULL,
  cPhone INTEGER,
  cEmail  VARCHAR (20)  NOT NULL,
  PRIMARY KEY (cPhone)
);

SHOW ERRORS;

/*  
** ----------------------------------------------------------------------------
**  Below all contain FORIEGN KEY(s)
** ----------------------------------------------------------------------------
*/

/*
** ----------------------------------------------------------------------------
** script to create the category table
** Description: lists all items and what category they fall under. Contains:
	
	productID- numerical rep of the a specific item, integer
	ItemCategory- item is either an/a Entre, Desert, Drink, Appitizer, or Salad, char
** --------------------------------------------------------------------------*/

CREATE TABLE fCategory (
	productID			INTEGER PRIMARY KEY,
	ItemCategory	VARCHAR2(20)  NOT NULL CHECK (ItemCategory = 'Entre' or 
  ItemCategory = 'Desert' or ItemCategory = 'Drink' or 
  ItemCategory = 'Appitizer' or ItemCategory = 'Salad'),
	FOREIGN KEY (productID) REFERENCES iMenu(productID) ON DELETE SET NULL
);

SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the food table 
** Description: food orders put in for resturants. contains:
	
	fStatus- Status of the food, either Ordered, Completed, or in Progress, char
	StartTime- the date/time the item is started, character
	EndTime- the date/time the item is completed, character
	instanceID- the numerical rep of the item being processed, integer
	productID- the numerical rep of the item itself, integer
	orderID- the numerical rep of the order of this item, integer
** --------------------------------------------------------------------------*/
CREATE TABLE food (
	fStatus		  VARCHAR (20)  NOT NULL CHECK (fStatus = 'Ordered' OR fStatus = 'Completed'
  OR fStatus = 'In Progress'),
	StartTime	  VARCHAR (20)  NOT NULL,
  FinishTime  VARCHAR (20),
  instanceID  INTEGER,
  productID   INTEGER,
  orderID     INTEGER,
	PRIMARY KEY (instanceID),
	FOREIGN KEY(productID) REFERENCES iMenu(productID) ON DELETE CASCADE,
  FOREIGN KEY(orderID) REFERENCES ordr(orderID) ON DELETE CASCADE
);
SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the billDisc table 
** Description: bill be discounted. Contains:

	employeeID- numerical rep of an employee, integer
	billID- numerical rep of a certain bill, integer
	amount- how much is being discounted, float
** --------------------------------------------------------------------------*/
CREATE TABLE billDisc (
	employeeID  INTEGER NOT NULL,
  billID      INTEGER NOT NULL,
  amount      FLOAT NOT NULL,
	PRIMARY KEY (billID),
  FOREIGN KEY(billID) REFERENCES bill(billID),
 FOREIGN KEY (employeeID) REFERENCES employee(employeeID) ON DELETE CASCADE

);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the itemDisc table 
** Description: certain item be discounted. Contains:

	employeeID- numerical rep of an employee, integer
	billID- numerical rep of a certain bill, integer
	productID- numerical rep of a certain item, integer
** --------------------------------------------------------------------------*/
CREATE TABLE itemDisc (
	employeeID  INTEGER,
  productID    INTEGER,
  amount      FLOAT NOT NULL,
	PRIMARY KEY (productID),
	FOREIGN KEY(employeeID) REFERENCES employee(employeeID),
  FOREIGN KEY (productID) REFERENCES iMenu(productID)
);
SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the cooks table 
** Description: which chef is cooking what. contains

	employeeID- numerical rep of an employee, integer
	instanceID- the numerical rep of the item being processed, integer
	CookTime- how long it took to cook, float
** --------------------------------------------------------------------------*/
CREATE TABLE cooks (
	employeeID  INTEGER,
  instanceID INTEGER,
  CookTime    FLOAT,
	PRIMARY KEY (instanceID),
  FOREIGN KEY (employeeID) REFERENCES employee(employeeID)
  );
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** add foreign key for the employee table 
** --------------------------------------------------------------------------*/


ALTER TABLE cooks
	ADD (FOREIGN KEY(instanceID) REFERENCES food(instanceID) ON DELETE SET NULL);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the pay table 
** Description: how and who paid for the bill. Contains:

	billID- numerical rep of a certain bill, integer
	cPhone- numerical rep of the customer and their personal number, integer
	Tip- did the customer leave a tip, Float
	paymentType- customer can pay with cash, check, or card, characters

** --------------------------------------------------------------------------*/
CREATE TABLE pay (
  billID      INTEGER,
  cPhone      INTEGER,
  tip         FLOAT NOT NULL,
  paymentType VARCHAR (20)  NOT NULL CHECK(paymentType = 'Cash' or paymentType = 'Check' or paymentType = 'Card'),
	PRIMARY KEY(billID, cPhone),
	FOREIGN KEY(billID) REFERENCES bill(billID),
  FOREIGN KEY (cPhone) REFERENCES customer(cPhone)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the waiter table 
** Description: which waiter served which table. Contains:

	employeeID- numerical rep of an employee, integer
	tNumber- numerical rep of certain table, integer
** --------------------------------------------------------------------------*/
CREATE TABLE waiter (
  employeeID  INTEGER,
  tNumber     INTEGER,	
  PRIMARY KEY (tNumber),
	FOREIGN KEY(employeeID) REFERENCES employee(employeeID),
  FOREIGN KEY(tNumber) REFERENCES tble(tNumber)
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the visits table
** Description: when the customers have visted and if they have left. Contains:

	cPhone- numerical rep of the customer and their personal number, integer
	rName- name of the resturant, character
	tEnter- day entered into restaurant, date
	tExit- if custoemr is still at restaurant, will be null, otherwise, shows a date, Date
** --------------------------------------------------------------------------*/
CREATE TABLE vists (
  cPhone  INTEGER,
  rName   VARCHAR(20) NOT NULL,
  tEnter  DATE NOT NULL,
  tExit   DATE,
  PRIMARY KEY (cPhone, tEnter),
  FOREIGN KEY(cPhone) REFERENCES customer(cPhone),
  FOREIGN KEY (rName) REFERENCES rest(rName)
);
SHOW ERRORS;




