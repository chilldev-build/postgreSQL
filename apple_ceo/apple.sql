-- CREATE TABLE ceos (
--    id SERIAL PRIMARY KEY,
--    name TEXT NOT NULL,
--    year INTEGER
-- );

-- INSERT into ceos(name, year) VALUES 
-- ('Steve Jobs', 1976), 
-- ('Mike Markkula', 1977), 
-- ('Mike Scott', 1978), 
-- ('John Sculley', 1983), 
-- ('Michael Spindler', 1993), 
-- ('Gil Amelio', 1996), 
-- ('Steve Jobs', 1997), 
-- ('Tim Cook',2011);

SELECT distinct ON(name, year) name, year from ceos order by name,year;