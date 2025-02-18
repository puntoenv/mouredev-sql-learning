CREATE TABLE persons (
  id INT,
  name VARCHAR(100),
  age INT,
  email VARCHAR(50),
  created DATE
);

CREATE TABLE persons2 (
  id INT NOT NULL,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATE
);

CREATE TABLE persons3 (
  id INT NOT NULL,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATETIME,
  UNIQUE (id)
);

CREATE TABLE persons4 (
  id INT NOT NULL,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATETIME,
  UNIQUE (id),
  PRIMARY KEY (id)
);

CREATE TABLE persons5 (
  id INT NOT NULL,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATETIME,
  UNIQUE (id),
  PRIMARY KEY (id),
  CHECK (age >= 18)
);

CREATE TABLE persons6 (
  id INT NOT NULL,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATETIME DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE (id),
  PRIMARY KEY (id),
  CHECK (age >= 18)
);

CREATE TABLE persons7 (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NUll,
  age INT,
  email VARCHAR(50),
  created DATETIME DEFAULT CURRENT_TIMESTAMP(),
  UNIQUE (id),
  PRIMARY KEY (id),
  CHECK (age >= 18)
);

CREATE TABLE persons8 (name VARCHAR(100) NOT NUll);
