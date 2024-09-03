--- session 3a
select 
Top 1 COUNTRIES,
sum(quantity) as Country_with_Beer_Highest_Consumption
from brew_data
where BRANDS not like '%Malt'
group by COUNTRIES
order by Country_with_Beer_Highest_Consumption desc;

--- session 3b

select top 1 [SALES_REP],
sum(quantity) as Sales_Rep_with_Highest_Sales
from BREW_DATA
group by SALES_REP
order by Sales_Rep_with_Highest_Sales desc;

--- session 3c
select top 1 countries,
sum(profit) as Country_with_Highest_Profit_4th_Quarter_2019
from BREW_DATA
where MONTHS in('October', 'november', 'december')
and YEARS = '2019'
group by COUNTRIES
order by Country_with_Highest_Profit_4th_Quarter_2019 desc;
