select [QUANTITY], countries, region 
from BREW_DATA;



select Top 1
brands,
Sum(quantity) as Favourite_Brands_SouthSouth_Nigeria
from BREW_DATA
where REGION = 'southsouth'
and COUNTRIES = 'nigeria'
group by brands
order by Favourite_Brands_SouthSouth_Nigeria desc;


select  brands,
sum(quantity) as Budweiser_Consumption_Nigeria
from BREW_DATA
where BRANDS = 'Budweiser'
and COUNTRIES = 'Nigeria'
group by brands;


select brands,
sum(quantity) as '2019_Budweiser_Consumption_Nigeria'
from brew_data
where BRANDS = 'budweiser'
and YEARS = '2019'
and COUNTRIES = 'Nigeria'
group by BRANDS;
