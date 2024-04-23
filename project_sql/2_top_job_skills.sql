--What skills are required for the top=paying data analys jobs?
--Use the top 10 highest-paying Data Analyst jobs from the first query
--Why? Helping job seekers undarstand which skills to develepo that aligin with top salaries 


with top_paying_jobs as (
    SELECT
        job_id,
        job_title,
        salary_year_avg, 
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
)
select 
    tpj.*,
    sd.skills 
from top_paying_jobs tpj
INNER JOIN skills_job_dim sjd on tpj.job_id=sjd.job_id
INNER JOIN skills_dim sd on sjd.skill_id=sd.skill_id
ORDER BY  tpj.salary_year_avg DESC