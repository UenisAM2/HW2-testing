# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
# rails generate model Studio
# rails generate model Movie
# rails generate model Actor
# rails generate model Role

# rails db:migrate


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
studios = Studio.new
studios["name_studio"]= "Warner Bros"
studios.save

movies = Movie.new
movies["title"]= "Batman Begins"
movies["year_released"]= 2005
movies["rated"]= "PG-13"
movies["studio_id"]= 1
movies.save

movies = Movie.new
movies["title"]= "The Dark Knight"
movies["year_released"]= 2008
movies["rated"]= "PG-13"
movies["studio_id"]= 1
movies.save

movies = Movie.new
movies["title"]= "The Dark Knight Rises"
movies["year_released"]= 2012
movies["rated"]= "PG-13"
movies["studio_id"]= 1
movies.save

#actos

actors = Actor.new
actors["name"]= "Christian Bale"
actors.save

actors = Actor.new
actors["name"]= "Michael Caine"
actors.save

actors = Actor.new
actors["name"]= "Liam Neeson"
actors.save

actors = Actor.new
actors["name"]= "Katie Holmes"
actors.save

actors = Actor.new
actors["name"]= "Gary Oldman"
actors.save

actors = Actor.new
actors["name"]= "Heath Ledger"
actors.save

actors = Actor.new
actors["name"]= "Aaron Eckhart"
actors.save

actors = Actor.new
actors["name"]= "Maggie Gyllenhaal"
actors.save

actors = Actor.new
actors["name"]= "Tom Hardy"
actors.save

actors = Actor.new
actors["name"]= "Joseph Gordon-Levitt"
actors.save

actors = Actor.new
actors["name"]= "Anne Hathaway"
actors.save

roles = Role.new
roles["movie_id"]= 1
roles["actor_id"]= 1
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= 1
roles["actor_id"]= 2
roles["character_name"]= "Alfred"
roles.save

roles = Role.new
roles["movie_id"]= 1
roles["actor_id"]= 3
roles["character_name"]= "Ra's Al Ghul"
roles.save

roles = Role.new
roles["movie_id"]= 1
roles["actor_id"]= 4
roles["character_name"]= "Rachel Dawes"
roles.save

roles = Role.new
roles["movie_id"]= 1
roles["actor_id"]= 5
roles["character_name"]= "Commissioner Gordon"
roles.save

roles = Role.new
roles["movie_id"]= 2
roles["actor_id"]= 1
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= 2
roles["actor_id"]= 2
roles["character_name"]= "Heath Ledger"
roles.save

roles = Role.new
roles["movie_id"]= 2
roles["actor_id"]= 3
roles["character_name"]= "Aaron Eckhart"
roles.save

roles = Role.new
roles["movie_id"]= 2
roles["actor_id"]= 4
roles["character_name"]= "Alfred"
roles.save

roles = Role.new
roles["movie_id"]= 2
roles["actor_id"]= 5
roles["character_name"]= "Maggie Gyllenhaal"
roles.save


roles = Role.new
roles["movie_id"]= 3
roles["actor_id"]= 1
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= 3
roles["actor_id"]= 2
roles["character_name"]= "Commissioner Gordon"
roles.save

roles = Role.new
roles["movie_id"]= 3
roles["actor_id"]= 3
roles["character_name"]= "Bane"
roles.save

roles = Role.new
roles["movie_id"]= 3
roles["actor_id"]= 4
roles["character_name"]= "John Blake"
roles.save

roles = Role.new
roles["movie_id"]= 3
roles["actor_id"]= 5
roles["character_name"]= "Sekina Kyle"
roles.save


# # Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

puts "Movies: #{Movie.all.count}"

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all


for movie in movies
    # read the relevant columns from the salesperson row
    title = movie["title"]
    year_released = movie["year_released"]
    rated = movie["rated"]
    
    puts "#{movie["studio_id"]}"
    studio = Studio.find_by({"id" =>movie["studio_id"]})
    studio_name = studio["name_studio"]

    # display a string with the relevant columns
    puts "#{title} was released in #{year_released} and rated #{rated}, from studio #{studio}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
