CREATE TABLE employee
(
   id INTEGER PRIMARY KEY,
   name VARCHAR (64) NOT NULL,
   age int (4) NOT NULL,
   vosition VARCHAR (64) NOT NULL
);
CREATE TABLE user
(
   id INTEGER PRIMARY KEY,
   username VARCHAR (64) NOT NULL,
   password VARCHAR (64) NOT NULL,
   password_expired VARCHAR (64) NOT NULL,
   role VARCHAR (64) NOT NULL,
   createTime date
);