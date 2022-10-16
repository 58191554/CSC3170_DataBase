SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP SCHEMA IF EXISTS `as3` ;
CREATE SCHEMA IF NOT EXISTS `as3` DEFAULT CHARACTER SET utf8 ;
USE `as3` ;

-- -----------------------------------------------------
-- Create below: Table `as3`.`regions`
-- -----------------------------------------------------
CREATE TABLE regions (
    REGION_ID int(5) NOT NULL PRIMARY KEY,
    REGION_NAME CHAR(25) NOT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

-- -----------------------------------------------------
-- Create below: Table `as3`.`countries`
-- -----------------------------------------------------

create table  countries(
	COUNTRY_ID char(2) PRIMARY KEY,
    COUNTRY_NAME varchar(50) not null,
    REGION_ID int(5) not null,
    foreign key(REGION_ID) references regions(REGION_ID)
);

-- -----------------------------------------------------
-- Create below: Table `as3`.`locations`
-- -----------------------------------------------------
create table locations(
	LOCATION_ID int(4),
    STREET_ADDRESS char(40),
    POSTAL_CODE char(12),
    CITY char(30),
    STATE_PROVINCE char(25),
    COUNTRY_ID char(2) not null,
    primary key (LOCATION_ID),
    foreign key(COUNTRY_ID) references countries(COUNTRY_ID)
    
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Create below: Table `as3`.`jobs`
-- -----------------------------------------------------
create table  jobs(
	JOB_ID char(10),
    JOB_TITLE char(35),
    MIN_SALARY numeric(6,0),
    MAX_SALARY numeric(6,0),
    primary key(JOB_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Create below: Table `as3`.`employees`
-- -----------------------------------------------------

create table employees(
	EMPLOYEE_ID int(6),
    FIRST_NAME char(20),
    LAST_NAME char(25),
    EMAIL varchar(50),
    PHONE_NUMBER char(20),
    HIRE_DATE char(10),
    JOB_ID char(10),
    SALARY numeric(8,2),
    COMMISSION_PCT numeric(3,2),
    MANAGER_ID int(6),
    DEPARTMENT_ID int(3),
    
    primary key(EMPLOYEE_ID),
    foreign key(JOB_ID) references jobs(JOB_ID),
    foreign key(MANAGER_ID) references employees(EMPLOYEE_ID),
    foreign key(DEPARTMENT_ID) references departments(DEPARTMENT_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Create below: Table `as3`.`departments`
-- -----------------------------------------------------

create table departments(
	DEPARTMENT_ID int(3),
    DEPARTMENT_NAME char(25),
    MANAGER_ID int(6),
    LOCATION_ID int(4),
    
    primary key(DEPARTMENT_ID),
    foreign key(MANAGER_ID) references employees(EMPLOYEE_ID),
    foreign key(LOCATION_ID) references locations(LOCATION_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Create below: Table `as3`.`job_history`
-- -----------------------------------------------------

create table job_history(
	EMPLOYEE_ID  int(6),
	START_DATE  char(10),
	END_DATE char(10) not null,
	JOB_ID char(10),
    DEPARTMENT_ID int(3),
    
	primary key(EMPLOYEE_ID, START_DATE),
	foreign key(EMPLOYEE_ID) references employees(EMPLOYEE_ID),
    foreign key(JOB_ID) references jobs(JOB_ID),
    foreign key(DEPARTMENT_ID) references departments(DEPARTMENT_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- End of coding
-- -----------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
