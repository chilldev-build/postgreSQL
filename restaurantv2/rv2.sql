CREATE TABLE restaurant (
   id SERIAL PRIMARY KEY,
   name TEXT NOT NULL,
   address TEXT,
   category TEXT
);

CREATE TABLE reviewer (
   id SERIAL PRIMARY KEY,
   name TEXT NOT NULL,
   email TEXT, 
   karma INTEGER CHECK (karma >= 0)
);

CREATE TABLE review (
   id SERIAL PRIMARY KEY,
   reviewer_id INTEGER REFERENCES review(id),
   stars INTEGER CHECK (stars > 0),
   title TEXT, 
   review TEXT,
   restaurant_id INTEGER REFERENCES restaurant(id)
);

--INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, ate_last) 
 --   VALUES 
 --       ('The Big Taco',20,5,'Mexican','Tacos al Pastor',TRUE, '2019-09-01 19:00:00');
--         ('The Big Italian',6,4,'Italian','Chicken Picatta',FALSE, '2019-10-01 19:05:00'),
--         ('The Big Greek',8,5,'Greek','Gyro Platter',FALSE, '2019-10-05 12:05:00'),
--         ('Athens Greek Restaurant',24,5,'Greek','Gyro Platter',TRUE, '2019-8-05 12:05:00'),
--         ('Tazikis Restaurant',24,3,'Greek','Gyro Platter',TRUE, '2019-7-05 12:05:00')
-- ;