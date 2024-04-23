--Identify the top 10 highest-paying Data Analyst roles that are available remotely
--Jobs with salaries(remove nulls)
--Why? Highlight the top-paying oportunities for Data Analysts

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg, 
    job_posted_date,
    cd.name as company_name
FROM
    job_postings_fact jpc
LEFT JOIN company_dim cd on jpc.company_id=cd.company_id
WHERE
    job_title_short='Data Analyst' AND
    job_location='Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
Limit 10