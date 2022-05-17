create database it_marketplace;

create table customers (
id int not null auto_increment,
customer_name varchar(50) not null,
companies_id int not null,
primary key(id)
);

create table companies(
id int not null auto_increment,
company_name varchar(150) not null,
projects_id int not null,
primary key(id)
);

create table projects(
id int not null auto_increment,
project_name varchar(200) not null,
skills_id int not null,
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
dev_skill_id int not null,
dev_project_id int not null,
dev_company_id int not null,
primary key(id)
);

ALTER TABLE `it_marketplace`.`companies` 
ADD INDEX `project_id_idx` (`projects_id` ASC) VISIBLE;
;
ALTER TABLE `it_marketplace`.`companies` 
ADD CONSTRAINT `project_id`
  FOREIGN KEY (`projects_id`)
  REFERENCES `it_marketplace`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `it_marketplace`.`customers` 
ADD INDEX `companies_id_idx` (`companies_id` ASC) VISIBLE;
;
ALTER TABLE `it_marketplace`.`customers` 
ADD CONSTRAINT `companies_id`
  FOREIGN KEY (`companies_id`)
  REFERENCES `it_marketplace`.`companies` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `it_marketplace`.`projects` 
ADD INDEX `skills_id_idx` (`skills_id` ASC) VISIBLE;
;
ALTER TABLE `it_marketplace`.`projects` 
ADD CONSTRAINT `skills_id`
  FOREIGN KEY (`skills_id`)
  REFERENCES `it_marketplace`.`skills` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `it_marketplace`.`developers` 
ADD INDEX `dev_skills_id_idx` (`dev_skill_id` ASC) VISIBLE,
ADD INDEX `dev_project_id_idx` (`dev_project_id` ASC) VISIBLE,
ADD INDEX `dev_company_id_idx` (`dev_company_id` ASC) VISIBLE;
;
ALTER TABLE `it_marketplace`.`developers` 
ADD CONSTRAINT `dev_skill_id`
  FOREIGN KEY (`dev_skill_id`)
  REFERENCES `it_marketplace`.`skills` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `dev_project_id`
  FOREIGN KEY (`dev_project_id`)
  REFERENCES `it_marketplace`.`projects` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `dev_company_id`
  FOREIGN KEY (`dev_company_id`)
  REFERENCES `it_marketplace`.`companies` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

  

  



