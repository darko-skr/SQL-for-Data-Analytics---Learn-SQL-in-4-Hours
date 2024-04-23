select * 
from(
    select * from job_postings_fact
    where EXTRACT(month from job_posted_date)=3
) as january_jobs;



