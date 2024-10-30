-- SELECTING DATA


SELECT id, 
  CASE
    WHEN critics_rating > 8 THEN 'Good'
    WHEN critics_rating > 6 THEN 'Decent'
    ELSE 'Bad'
  END AS score
FROM movies_critic_rating


-- FILTERING MOVIE BY SCORE


SELECT 
    t.title AS "Title", 
    CASE 
        WHEN t.release_year_id > 2000 THEN '21st Century'
        ELSE '20th Century'
    END AS "Released", 
    d.dir_name AS "Director", 
    cr.critics_rating, 
    CASE 
        WHEN cr.critics_rating >= 9 THEN 'Amazing'
        WHEN cr.critics_rating > 7 THEN 'Good'
        WHEN cr.critics_rating > 5 THEN 'Decent'
        ELSE 'Bad'
    END AS "Reviews"
FROM 
    movies_title t
JOIN 
    movies_director d ON t.director_id = d.id 
JOIN 
    movies_critic_rating cr ON t.id = cr.titles_id 
ORDER BY 
    t.title DESC;

  
-- ADDING MOVIES


INSERT INTO movies_basic(title, genre, release_year, director, studio, critics_rating) 
VALUES('Run for the Forest', 'Drama', 1946, 'Rence Pera', 'Lionel Brownstone', 7.3), 
('Luck of the Night', 'Drama', 1951, 'Rence Pera', 'Lionel Brownstone', 6.8), 
('Invader Glory', 'Adventure', 1953, 'Rence Pera', 'Lionel Brownstone', 5.5)


-- UPDATING GENRE 'sci-fi' TO 'sf' FOR ALL FALSTEAD GROUP FILMS

  
SELECT * FROM movies_basic 
WHERE studio LIKE 'Falstead Group'

UPDATE movies_basic 
SET genre = 'SF' 
WHERE genre = 'Sci-Fi' 
AND studio LIKE 'Falstead Group'

  
-- REMOVE ALL THE MOVIES DIRECTED BY GARRY SCOTT FOR LIONEL BROWNSTONE STUDIO


SELECT * FROM movies_basic 
WHERE director = 'Garry Scott' 
AND studio = 'Lionel Brownstone'

DELETE FROM movies_basic 
WHERE director = 'Garry Scott' 
AND studio = 'Lionel Brownstone'


-- FINDING THE TOP 10 RATED MOVIES.


SELECT t.title, d.dir_name, cr.critics_rating, p.filename 
FROM movies_title t 
JOIN movies_director d ON t.director_id = d.id
JOIN movies_critic_rating cr ON t.id = cr.titles_id 
JOIN posters p ON t.id = p.titles_id 
ORDER BY critics_rating DESC 
LIMIT 10

