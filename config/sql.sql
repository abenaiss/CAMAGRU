CREATE TABLE IF NOT EXISTS users (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  pseudo VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL,
  passwrd TEXT NOT NULL,
  token TEXT NOT NULL,
  profile TEXT NOT NULL,
  notification VARCHAR(1) NOT NULL
);

CREATE TABLE IF NOT EXISTS password_reset(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  token TEXT NOT NULL,
  email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS images(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Path TEXT NOT NULL,
  USER int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS likes(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  imageID int(11) NOT NULL,
  USER int(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS comment(
  ID INT PRIMARY KEY AUTO_INCREMENT,
  USER int(11) NOT NULL,
  COMMENT TEXT NOT NULL,
  imageID int(11) NOT NULL
);