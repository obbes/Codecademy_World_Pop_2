SELECT COUNT(*) FROM countries
WHERE continent = 'Africa';

SELECT SUM(population) as 'population'
 FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE continent = 'Oceania' AND year = 2005;

SELECT AVG(population) as 'Average'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE continent = 'South America' AND year = 2003;

SELECT name, population
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2007 AND population IS NOT NULL
ORDER BY population ASC
LIMIT 1;

SELECT AVG(population) as 'Poland'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE name = 'Poland';

SELECT COUNT(*)
FROM countries
WHERE name LIKE '%, The%';

SELECT SUM(population) as 'population', continent
 FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY 2;