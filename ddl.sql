/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to create the item table 
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
** --------------------------------------------------------------------------*/

CREATE TABLE ordr (
	orderID INTEGER PRIMARY KEY 
);

SHOW ERRORS;


/*
** ----------------------------------------------------------------------------
** script to create the tble table (tble=table, table is reserved word)
** --------------------------------------------------------------------------*/

CREATE TABLE tble (
	tNumber   INTEGER PRIMARY KEY,
  PartySize INTEGER,
  mSize     INTEGER
);

SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the bill table
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
**  Below all contain FORIEGN KEY 
** ----------------------------------------------------------------------------
*/


/*
** ----------------------------------------------------------------------------
** script to create the food table 
** --------------------------------------------------------------------------*/
CREATE TABLE food (
	fStatus		  VARCHAR (20)  NOT NULL CHECK (fStatus = 'Ordered' OR fStatus = 'Completed'
  OR fStatus = 'In Progress'),
	StartTime	  DATE  NOT NULL,
  FinishTime  DATE  NOT NULL,
  instanceID  INTEGER,
  productID   INTEGER,
  orderID     INTEGER,
	PRIMARY KEY (instanceID, productID, orderID),
	FOREIGN KEY(productID) REFERENCES iMenu(productID) ON DELETE CASCADE,
  FOREIGN KEY(orderID) REFERENCES ordr(orderID) ON DELETE CASCADE
);
SHOW ERRORS;

/*
** ----------------------------------------------------------------------------
** script to create the cooks table 
** --------------------------------------------------------------------------
CREATE TABLE cooks (
	employeeID  INTEGER,
  instanceID INTEGER,
  orderID     INTEGER,
	PRIMARY KEY (employeeID, instanceID, orderID),
  FOREIGN KEY(instanceID) REFERENCES food(instanceID),
  FOREIGN KEY(orderID) REFERENCES ordr(orderID) ON DELETE CASCADE
  );
SHOW ERRORS;*/

/*
** ----------------------------------------------------------------------------
** script to create the billDisc table 
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

