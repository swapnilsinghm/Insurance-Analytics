create database insurance;
use insurance;
show tables;

# 1 no of invoice by account executive
select "account executive", count(distinct invoice_number) as invoice_count
from invoice group by "account executive";

#2 yearly meeting count
SELECT year(meeting_date) as meeting_year,count(*) as meeting_count
from meeting
group by year(meeting_date);

#3 cross sell, new, renewal
 # cross sell
SELECT SUM(Amount) AS Achieved_Cross_Sell
FROM brokerage
WHERE income_class = 'Cross Sell';

    
    SELECT
    SUM(Amount) AS Invoice_Cross_Sell
FROM
    invoice
WHERE
    income_class = 'Cross Sell';
    
    SELECT
    SUM(`Cross sell bugdet`) AS Budget_Cross_Sell
FROM
    budgets;
    
# new
SELECT
    SUM(Amount) AS Achieved_New
FROM
    brokerage
WHERE
    income_class = 'New'; # value error 
    
SELECT
    SUM(Amount) AS Invoice_New
FROM
    invoice
WHERE
    income_class = 'New';

SELECT
    SUM(`New Budget`) AS Budget_New
FROM
    budgets;
    
#Renewal
SELECT
    SUM(Amount) AS Achieved_Renewal
FROM
    brokerage
WHERE
    income_class = 'Renewal'; #  value error
    
SELECT
    SUM(Amount) AS Invoice_Renewal
FROM
    invoice
WHERE
    income_class = 'Renewal';
    
SELECT
    SUM(`Renewal Budget`) AS Budget_Renewal
FROM
    budgets;

#4 stage funnel by revenue
select stage,sum(revenue_amount) as total_revenue
from opportunity
group by stage;

#5 no of meetings by acc exe
select 'account executive',count(*) as meeting_count
from meeting;

#6 top open opportunity
select opportunity_name,'account executive',revenue_amount from
opportunity where stage not like '%closed%'
order by revenue_amount desc limit 4;



   












