-- YEAR WISE LOAN AMOUNT
-- GRADE SUBGRADE WISE REVOLUTION BLANCE
-- TOTAL PAYMENT FOR VERFIED STATUS VS NON VERFIED STATUS
-- STATE WISE LAST CREDIT PULL_D WISE LOAN STATUSE
-- HOME QWNEWRSHIP VS LASR PAYMENT DATE STATe

select *
from finance_1;
select *
from finance_2;



#KPI 1

select year(issue_D) as Year_of_issue_d , sum(loan_amnt) as Total_loan_amnt
from finance_1
group by Year_of_issue_d
order by Year_of_issue_d;


#KPI 2
select
grade ,sub_grade , sum(revol_bal) as total_revol_bal
from finance_1 inner join finance_2
on(finance_1.id = finance_2.id)
 group by grade , sub_grade
 order by grade , sub_grade;
 
 #KPI 3
 
 
 select verification_status ,
 concat("$", format(round(sum(total_pymnt)/1000000,2),2),"M") as total_payment
 from finance_1 inner join finance_2
  on(finance_1.id = finance_2.id)
  group by  verification_status;
  
  
#KPI 4
select addr_state , last_credit_pull_D , loan_status

from finance_1 inner join finance_2
 on(finance_1.id = finance_2.id)
 
 group by addr_state , last_credit_pull_d , loan_status
 order by last_credit_pull_d;
 
 #KPI 5
 select
 home_ownership ,year(last_pymnt_d),
 concat("$", format(round(sum(last_pymnt_d)/10000,2),2),"K") as total_payment
 from finance_1 inner join finance_2
 on (finance_1.id = finance_2.id)
 group by home_ownership , last_pymnt_d
 order by last_pymnt_d desc , home_ownership desc ;




