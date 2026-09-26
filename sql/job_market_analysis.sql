CREATE TABLE vacancies (
    id INTEGER PRIMARY KEY,
    created_at TIMESTAMP,
    title TEXT,
    company TEXT,
    source_url TEXT,
    description_raw TEXT,
    experience_years NUMERIC,
    published_at TIMESTAMP,
    location TEXT,
    experience_level TEXT
);

CREATE TABLE skills (
    id INTEGER PRIMARY KEY,
    created_at TIMESTAMP,
    name TEXT
);

CREATE TABLE vacancy_skills (
    vacancy_id INTEGER,
    skill_id INTEGER
);


-- Q1. Which companies have the highest number of job postings?
SELECT
    company,
    COUNT(*) AS job_postings
FROM vacancies
GROUP BY company
ORDER BY job_postings DESC
LIMIT 10;

-- Q2.Which locations have the most job postings?
SELECT
    location,
    COUNT(*) AS job_postings
FROM vacancies
GROUP BY location
ORDER BY job_postings DESC
LIMIT 10;

-- Q3.What is the distribution of experience levels?
SELECT
    experience_level,
    COUNT(*) AS job_postings
FROM vacancies
GROUP BY experience_level
ORDER BY job_postings DESC;

-- Q4. Which are Most demanded skills..?
SELECT
    s.name AS skill,
    COUNT(*) AS job_postings
FROM vacancy_skills vs
JOIN skills s
    ON vs.skill_id = s.id
GROUP BY s.name
ORDER BY job_postings DESC
LIMIT 15;

-- Q5.Which skills are associated specifically with Data Analyst jobs?
SELECT
    s.name AS skill,
    COUNT(*) AS job_postings
FROM vacancies v
JOIN vacancy_skills vs
    ON v.id = vs.vacancy_id
JOIN skills s
    ON vs.skill_id = s.id
WHERE v.title LIKE '%data analyst%'
GROUP BY s.name
ORDER BY job_postings DESC
LIMIT 15;

-- Q6.Which companies have the most Data Analyst job postings?
SELECT
    company,
    COUNT(*) AS job_postings
FROM vacancies
WHERE title LIKE '%data analyst%'
GROUP BY company
ORDER BY job_postings DESC
LIMIT 10;

-- Q7.Data Analyst jobs by experience level..?
SELECT
    experience_level,
    COUNT(*) AS job_postings
FROM vacancies
WHERE title LIKE '%data analyst%'
GROUP BY experience_level
ORDER BY job_postings DESC;

-- Q8.Which companies are hiring for a specific skill?
SELECT
    v.company,
    COUNT(*) AS job_postings
FROM vacancies v
JOIN vacancy_skills vs
    ON v.id = vs.vacancy_id
JOIN skills s
    ON vs.skill_id = s.id
WHERE s.name = 'Python'
GROUP BY v.company
ORDER BY job_postings DESC
LIMIT 10;

-- Q9.How many skills are associated with each vacancy?
SELECT
    v.id AS vacancy_id,
    v.title,
    COUNT(vs.skill_id) AS skill_count
FROM vacancies v
JOIN vacancy_skills vs
    ON v.id = vs.vacancy_id
GROUP BY v.id, v.title
ORDER BY skill_count DESC
LIMIT 10;

-- Q10. Which Data Analyst job postings require BOTH Python and SQL?
SELECT
    v.id AS vacancy_id,
    v.title,
    v.company
FROM vacancies v
WHERE v.title LIKE '%data analyst%'
  AND v.id IN (
      SELECT vs.vacancy_id
      FROM vacancy_skills vs
      JOIN skills s
          ON vs.skill_id = s.id
      WHERE s.name = 'Python'
  )
  AND v.id IN (
      SELECT vs.vacancy_id
      FROM vacancy_skills vs
      JOIN skills s
          ON vs.skill_id = s.id
      WHERE s.name = 'SQL'
  );




