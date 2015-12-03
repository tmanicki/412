/*
** ----------------------------------------------------------------------------
** Timothy Manicki
** CSE 412, 4:30-5:45
** tmanicki@asu.edu
** --------------------------------------------------------------------------*/

/*
** ----------------------------------------------------------------------------
** script to create the rest table 
** --------------------------------------------------------------------------*/

CREATE TABLE rest (
	rName			VARCHAR2(20)	NOT NULL PRIMARY KEY,
	rType			VARCHAR2(20)	NOT NULL
);

SHOW ERRORS;

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
	PRIMARY KEY (instanceID),
	FOREIGN KEY(productID) REFERENCES iMenu(productID) ON DELETE CASCADE,
  FOREIGN KEY(orderID) REFERENCES ordr(orderID) ON DELETE CASCADE
);
SHOW ERRORS;


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

/*
** ----------------------------------------------------------------------------
** script to create the itemDisc table 
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
** --------------------------------------------------------------------------*/
CREATE TABLE cooks (
	employeeID  INTEGER,
  instanceID INTEGER,
    AvgCookTime    FLOAT,
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

