create database it_marketplace;

create table customers (
id int not null auto_increment,
customer_name varchar(50) not null,
companies_country varchar(100) not null,
primary key(id)
);

create table companies(
id int not null auto_increment,
company_name varchar(150) not null,
company_country varchar(150) not null,
primary key(id)
);

create table projects(
id int not null auto_increment,
project_name varchar(200) not null,
project_description varchar(200),
primary key(id)
);

create table skills(
id int not null auto_increment,
skill_name varchar(50) not null,
skill_level varchar(50) not null,
primary key(id)
);

create table developers(
id int not null auto_increment,
first_name varchar(100) not null,
last_name varchar(100) not null,
primary key(id)
);

create table developers_market_info(
dev_id int not null,
skill_id int not null,
project_id int,
company_id int
);

ALTER TABLE `it_marketplace`.`developers_market_info` 
ADD INDEX `dev_id_idx` (`dev_id` ASC) VISIBLE,
ADD INDEX `skill_id_idx` (`skill_id` ASC) VISIBLE,
ADD INDEX `project_id_idx` (`project_id` ASC) VISIBLE,
ADD INDEX `company_id_idx` (`company_id` ASC) VISIBLE;
;
ALTER TABLE `it_marketplace`.`developers_market_info` 
ADD CONSTRAINT `dev_id`
  FOREIGN KEY (`dev_id`)
  REFERENCES `it_marketplace`.`developers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `skill_id`
  FOREIGN KEY (`skill_id`)
  REFERENCES `it_marketplace`.`skills` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `project_id`
  FOREIGN KEY (`project_id`)
  REFERENCES `it_marketplace`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `company_id`
  FOREIGN KEY (`company_id`)
  REFERENCES `it_marketplace`.`companies` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
