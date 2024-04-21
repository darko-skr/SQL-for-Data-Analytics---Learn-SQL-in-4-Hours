select 
count(job_id),
EXTRACT(MONTH from job_posted_date) as month
from job_postings_fact
group by month;

select * FROM job_postings_fact;