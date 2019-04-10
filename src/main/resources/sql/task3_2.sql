SELECT name
FROM developers_projects
  INNER JOIN developers ON developers.id = developers_projects.developer_id
  INNER JOIN projects ON projects.id = developers_projects.project_id
WHERE project_name = 'example_project';