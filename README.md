# Movie Analytics and Database Management Using SQL

## 1. Project Overview

This project provides a comprehensive exploration and management of a movie database, aiming to streamline the organization and analysis of movie-related data. By using SQL operations such as SELECT, INSERT, UPDATE, and DELETE, we retrieve, manipulate, and refine movie details stored across multiple tables. The project covers:

   *  Data Retrieval and Filtering: Extracting specific movie information based on various criteria, such as release year, director, and critics' ratings.
   *  Data Insertion: Adding new movies to the database, complete with title, genre, release year, director, studio, and critics' rating.
   *  Data Update: Modifying records, such as updating genre classifications for specific studios.
   *  Data Deletion: Removing entries matching specific criteria, like movies by a certain director for a specific studio.
   *  Top-Rated Movies: Identifying and displaying the top 10 highest-rated movies, including additional details like director and related poster files.


## 2. Dataset Details

This database consists of multiple interlinked tables.

 1. movies_basic:
       * Fields: title, genre, release_year, director, studio, critics_rating

2.  movies_critic_rating:
       * Fields: id, critics_rating

3.  movies_title:
       *  Fields: id, title, release_year_id, director_id

4.  movies_director:
      *  Fields: id, dir_name
    
5.  posters:
      *  Fields: titles_id, filename
       
