ALTER TABLE projects ADD COLUMN date DATE;
SELECT *
FROM projects;
UPDATE projects
SET date = '2019-01-01'
WHERE id = 1;
UPDATE projects
SET date = '20018-01-01'
WHERE id = 2;
UPDATE projects
SET date = '2019-02-02'
WHERE id = 3;
UPDATE projects
SET date = '2018-02-02'
WHERE id = 4;
UPDATE projects
SET date = '2019-03-03'
WHERE id = 5;
UPDATE projects
SET date = '2019-04-01'
WHERE id = 6;

SELECT
  date,
  project_name,
  count(developers.id)
FROM developers_projects
  LEFT JOIN projects ON projects.id = developers_projects.project_id
  LEFT JOIN developers ON developers.id = developers_projects.developer_id
GROUP BY project_name;