-- DB Create 
create DATABASE sladb;
use sladb;
-- Table Creation

CREATE TABLE sladevelopers(
id INT  PRIMARY KEY auto_increment,
user_id VARCHAR(20) UNIQUE,
developer_name VARCHAR(50),
developer_email VARCHAR(50),
developer_age INT,
developer_mobile INT,
createdby  VARCHAR(20) DEFAULT "ADMIN",
createdat  DATETIME,
updatedby  VARCHAR(20) DEFAULT "ROLE",
updateddat DATETIME
);

CREATE TABLE communication(
id INT PRIMARY KEY AUTO_INCREMENT,
Communication_user_id VARCHAR(20) UNIQUE,
mark int,
FOREIGN KEY (Communication_user_id) REFERENCES sladevelopers(user_id)
);

CREATE TABLE aptitude(
id INT PRIMARY KEY AUTO_INCREMENT,
aptitude_user_id VARCHAR(20) UNIQUE,
mark int
);


ALTER TABLE sladevelopers ADD CONSTRAINT uq_developer_email UNIQUE (developer_email);

ALTER TABLE aptitude ADD CONSTRAINT fk_aptitude
FOREIGN KEY (aptitude_user_id) REFERENCES sladevelopers(user_id);

RENAME TABLE aptitude TO aptitude_new;
RENAME TABLE aptitude_new TO aptitude;

ALTER TABLE aptitude RENAME TO aptitude_new;

ALTER TABLE aptitude_new CHANGE COLUMN mark full_mark INT;
ALTER TABLE aptitude_new MODIFY COLUMN full_mark VARCHAR(20);

ALTER TABLE aptitude_new ADD COLUMN join_data DATE;
