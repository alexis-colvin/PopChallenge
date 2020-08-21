-- This is the first query:

-- What years are covered by the dataset?:

SELECT DISTINCT year FROM population_years;

-- Add your additional queries below:

-- What is the largest population size for Gabon in this dataset?:

SELECT * FROM population_years
WHERE country='Gabon'
ORDER BY population DESC LIMIT 1;

-- What were the 10 lowest population countries in 2005?

SELECT * FROM population_years
WHERE year=2005
ORDER BY population LIMIT 10;

-- Where are all the distinct countries with a population of over 100 million in the year 2010?

SELECT * FROM population_years
WHERE year=2010 AND population>100;

-- How many countries in this dataset have the word "Islands" in their name?

SELECT COUNT(DISTINCT country) FROM population_years
WHERE country LIKE '%Islands%';

-- What is the difference in population between 2000 and 2010 in Indonesia?

SELECT year, population FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010;
