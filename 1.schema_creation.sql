CREATE DATABASE movies

USE movies

CREATE TABLE movies_basic(
  title VARCHAR(100) NOT NULL, 
  genre VARCHAR(50) NOT NULL, 
  release_year INT NOT NULL, 
  director VARCHAR(50) NOT NULL, 
  studio VARCHAR(50) NOT NULL, 
  critic_rating DECIMAL(2,1) DEFAULT 0)

  
CREATE TABLE movies_genre(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  genre VARCHAR(20) NOT NULL)

  
CREATE TABLE movies_director(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  dir_name VARCHAR(40) NOT NULL)

  
CREATE TABLE movies_studio(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  studio_name VARCHAR(30) NOT NULL, 
  city VARCHAR(50) NOT NULL)

  
CREATE TABLE movies_title(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  title VARCHAR(100) NOT NULL, 
  genre id INT NOT NULL, 
  release_year INT NOT NULL, 
  director_id INT NOT NULL, 
  studio_id INT NOT NULL, 
  FOREIGN KEY(genre_id) REFERENCES Genre(id), 
  FOREIGN KEY(director_id) REFERENCES Director(id), 
  FOREIGN KEY(studio_id) REFERENCES Studio(id))


CREATE TABLE movies_critic_rating(
  id INT PRIMARY KEY AUTO_INCREMENT, 
  titles_id INT NOT NULL, 
  critics_rating DECIMAL(2,1) DEFAULT 0,
  FOREIGN KEY(titles_di) REFERENCES titles(id))


CREATE TABLE posters(
  titles_id INT NOT NULL, 
  filename VARCHAR(100) NOT NULL, 
  resolution VARCHAR(20) NOT NULL, 
  FOREIGN KEY(titles_id) REFERENCES titles(id))














  

  
