SELECT name
FROM developers_skills
  LEFT JOIN developers ON developers.id = developers_skills.developer_id
  LEFT JOIN skills ON skills.id = developers_skills.skill_id
WHERE branch = 'java';