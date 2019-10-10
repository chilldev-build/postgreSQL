-- CREATE TABLE restaurant (
--    id SERIAL PRIMARY KEY,
--    name TEXT NOT NULL,
--    distance INTEGER,
--    stars INTEGER,
--    category TEXT, 
--    favorite_dish TEXT,
--    takeout BOOLEAN,
--    ate_last TIMESTAMP
-- );

--INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, ate_last) 
 --   VALUES 
 --       ('The Big Taco',20,5,'Mexican','Tacos al Pastor',TRUE, '2019-09-01 19:00:00');
--         ('The Big Italian',6,4,'Italian','Chicken Picatta',FALSE, '2019-10-01 19:05:00'),
--         ('The Big Greek',8,5,'Greek','Gyro Platter',FALSE, '2019-10-05 12:05:00'),
--         ('Athens Greek Restaurant',24,5,'Greek','Gyro Platter',TRUE, '2019-8-05 12:05:00'),
--         ('Tazikis Restaurant',24,3,'Greek','Gyro Platter',TRUE, '2019-7-05 12:05:00')
-- ;

SELECT * FROM restaurant;

--On Your Own: Writing Queries

--The names of the restaurants that you gave a 5 stars to
--SELECT name from restaurant where stars = 5;

-- The favorite dishes of all 5-star restaurants
--SELECT favorite_dish from restaurant where stars = 5;

-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
--SELECT id from restaurant where name = 'The Big Greek';

-- restaurants in the category of 'BBQ'
--SELECT name from restaurant where category = 'Mexican';

-- restaurants that do take out
--SELECT name from restaurant where takeout = TRUE;

-- restaurants that do take out and is in the category of 'BBQ'
--SELECT name from restaurant where takeout = TRUE and category = 'Mexican';

-- restaurants within 2 miles
--SELECT name from restaurant where distance < 2;

-- restaurants you haven't ate at in the last week
--SELECT name from restaurant where ate_last < '2019-10-05 00:00:00';

-- restaurants you haven't ate at in the last week and has 5 stars
--SELECT name from restaurant where ate_last < '2019-10-05 00:00:00' and stars > 4;

-- On Your Own: Aggregation and Sorting Queries
-- Hint: http://www.postgresqltutorial.com/postgresql-order-by/

-- list restaurants by the closest distance.
-- SELECT name from restaurant
-- order by distance;

-- list the top 2 restaurants by distance.
--SELECT name from restaurant
--order by distance 
--limit 2;

-- list the top 2 restaurants by stars.
--SELECT name from restaurant
--order by stars 
--limit 2;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
-- SELECT name from restaurant where distance > 5
-- order by distance 
-- limit 2;

-- count the number of restaurants in the db.
--SELECT count(id) from restaurant;

-- count the number of restaurants by category.
--SELECT count(category),stars from restaurant
--group by restaurant.category,restaurant.stars;

-- get the average stars per restaurant by category.
--SELECT category AS "Category", sum(stars)/count(stars) AS "Average Stars"  FROM restaurant
--GROUP BY restaurant.category;

-- get the max stars of a restaurant by category.
--SELECT distinct on (category)category,name, stars FROM restaurant
--order by category, name;


