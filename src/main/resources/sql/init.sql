CREATE SCHEMA `homework`;
USE homework;

CREATE TABLE `homework`.developers(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE `homework`.skills (
  id INT NOT NULL AUTO_INCREMENT,
  branch VARCHAR(255) NOT NULL,
  lvl VARCHAR(255) NOT NULL,
  PRIMARY KEY (id));

CREATE TABLE `homework`.projects (
  id INT NOT NULL AUTO_INCREMENT,
  project_name VARCHAR(255) NOT NULL,
  type VARCHAR(255),
  PRIMARY KEY (id));

CREATE TABLE `homework`.companies (
  id INT NOT NULL AUTO_INCREMENT,
  company_name VARCHAR(255) NOT NULL,
  location VARCHAR(255),
  PRIMARY KEY (id));

CREATE TABLE `homework`.customers (
  id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255) NOT NULL,
  country VARCHAR(255),
  PRIMARY KEY (id));

CREATE TABLE `homework`.developers_projects(
  developer_id INT NOT NULL,
  project_id INT NOT NULL,
  FOREIGN KEY(developer_id) REFERENCES developers(id),
  FOREIGN KEY(project_id) REFERENCES projects(id)
);

CREATE TABLE `homework`.developers_skills(
  developer_id INT NOT NULL,
  skill_id INT NOT NULL,
  FOREIGN KEY(developer_id) REFERENCES developers(id),
  FOREIGN KEY(skill_id) REFERENCES skills(id)
);

CREATE TABLE `homework`.companies_projects(
  company_id INT NOT NULL ,
  project_id INT NOT NULL ,
  FOREIGN KEY (company_id) REFERENCES companies(id),
  FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE `homework`.customers_projects(
  customer_id INT NOT NULL ,
  project_id INT NOT NULL ,
  FOREIGN KEY (customer_id) REFERENCES customers(id),
  FOREIGN KEY (project_id) REFERENCES projects(id)
);

INSERT INTO developers(name, age) VALUES
('First Dev', 20),

('Second Dev', 25),

('Another Dev', 21),

('And Another', 22),

('One More', 18),

('Last One', 30);

INSERT INTO skills(skill, lvl) VALUES
('Java', 'Junior'),
('Java', 'Middle'),
('Java', 'Senior'),
('JS', 'Junior'),
('JS', 'Middle'),
('JS', 'Senior'),
('C++', 'Junior'),
('C++', 'Middle'),
('C++', 'Senior');

INSERT INTO projects(name, date) VALUES
('NewApp', '01.01.2019'),
('MiddleApp', '02.02.2019'),
('OldApp', '03.03.2019');

INSERT INTO companies(name, location) VALUES
('Google', 'USA'),
('Privat', 'Ukraine'),
('BMW', 'Germany');

INSERT INTO customers(name, country) VALUES
('Ivan', 'USA'),
('John', 'Ukraine'),
('Victoria', 'Germany');

INSERT INTO developers_projects(developer_id, project_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 2),
(4, 3),
(5, 1),
(5, 2),
(6, 1),
(6, 3);

INSERT INTO developers_skills(developer_id, skills_id) VALUES
(1, 4),
(1, 8),
(2, 12),
(2, 3),
(3, 6),
(3, 9),
(4, 5),
(4, 10),
(5, 12),
(5, 3),
(6, 8),
(6, 9);

INSERT INTO companies_projects(company_id, project_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 3);

INSERT INTO customers_projects(customer_id, project_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 3);
