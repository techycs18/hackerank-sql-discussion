# Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
# Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select co.continent, floor(avg(ci.population)) from country as co, city as ci where ci.countrycode=co.code group by co.continent;
