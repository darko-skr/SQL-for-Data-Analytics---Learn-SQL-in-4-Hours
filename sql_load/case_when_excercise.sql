select 
    salary_year_avg,
    job_title_short,
  case
        when salary_year_avg<= 50000 then 'Low'
        when salary_year_avg>50000 then 'High'
        else 'null'
    end as High_or_Low
    from job_postings_fact
where
job_title_short='Data Analyst' and salary_year_avg IS NOT NULL

select 
    count(job_id),
  case
        when salary_year_avg<= 50000 then 'Low'
        when salary_year_avg>50000 then 'High'
        else 'null'
    end as High_or_Low
    from job_postings_fact
where
job_title_short='Data Analyst' and salary_year_avg IS NOT NULL
GROUP BY High_or_Low;