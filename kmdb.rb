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


bat_begins = Movie.new
bat_begins["title"]= "Batman Begins"
bat_begins["year_released"]= 2005
bat_begins["rated"]= "PG-13"
bat_begins["studio_id"]= studios["id"]
bat_begins.save

dknight = Movie.new
dknight["title"]= "The Dark Knight"
dknight["year_released"]= 2008
dknight["rated"]= "PG-13"
dknight["studio_id"]= studios["id"]
dknight.save

dknightii = Movie.new
dknightii["title"]= "The Dark Knight Rises"
dknightii["year_released"]= 2012
dknightii["rated"]= "PG-13"
dknightii["studio_id"]= studios["id"]
dknightii.save

#actos

bale = Actor.new
bale["name"]= "Christian Bale"
bale.save

caine = Actor.new
caine["name"]= "Michael Caine"
caine.save

neeson = Actor.new
neeson["name"]= "Liam Neeson"
neeson.save

holmes = Actor.new
holmes["name"]= "Katie Holmes"
holmes.save

oldman = Actor.new
oldman["name"]= "Gary Oldman"
oldman.save

ledger = Actor.new
ledger["name"]= "Heath Ledger"
ledger.save

eckhart = Actor.new
eckhart["name"]= "Aaron Eckhart"
eckhart.save

maggie = Actor.new
maggie["name"]= "Maggie Gyllenhaal"
maggie.save

tom = Actor.new
tom["name"]= "Tom Hardy"
tom.save

gordon = Actor.new
gordon["name"]= "Joseph Gordon-Levitt"
gordon.save

anne = Actor.new
anne["name"]= "Anne Hathaway"
anne.save


roles = Role.new
roles["movie_id"]= bat_begins["id"]
roles["actor_id"]= bale["id"]
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= bat_begins["id"]
roles["actor_id"]= caine["id"]
roles["character_name"]= "Alfred"
roles.save

roles = Role.new
roles["movie_id"]= bat_begins["id"]
roles["actor_id"]= neeson["id"]
roles["character_name"]= "Ra's Al Ghul"
roles.save

roles = Role.new
roles["movie_id"]= bat_begins["id"]
roles["actor_id"]= holmes["id"]
roles["character_name"]= "Rachel Dawes"
roles.save

roles = Role.new
roles["movie_id"]= bat_begins["id"]
roles["actor_id"]= oldman["id"]
roles["character_name"]= "Commissioner Gordon"
roles.save

roles = Role.new
roles["movie_id"]= dknight["id"]
roles["actor_id"]= bale["id"]
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= dknight["id"]
roles["actor_id"]= ledger["id"]
roles["character_name"]= "Joker"
roles.save

roles = Role.new
roles["movie_id"]= dknight["id"]
roles["actor_id"]= eckhart["id"]
roles["character_name"]= "Harvey Dent"
roles.save

roles = Role.new
roles["movie_id"]= dknight["id"]
roles["actor_id"]= caine["id"]
roles["character_name"]= "Alfred"
roles.save

roles = Role.new
roles["movie_id"]= dknight["id"]
roles["actor_id"]= maggie["id"]
roles["character_name"]= "Rachel Dawes"
roles.save


roles = Role.new
roles["movie_id"]= dknightii["id"]
roles["actor_id"]= bale["id"]
roles["character_name"]= "Bruce Wayne"
roles.save

roles = Role.new
roles["movie_id"]= dknightii["id"]
roles["actor_id"]= oldman["id"]
roles["character_name"]= "Commissioner Gordon"
roles.save

roles = Role.new
roles["movie_id"]= dknightii["id"]
roles["actor_id"]= tom["id"]
roles["character_name"]= "Bane"
roles.save

roles = Role.new
roles["movie_id"]= dknightii["id"]
roles["actor_id"]= gordon["id"]
roles["character_name"]= "John Blake"
roles.save

roles = Role.new
roles["movie_id"]= dknightii["id"]
roles["actor_id"]= anne["id"]
roles["character_name"]= "Sekina Kyle"
roles.save


# # Prints a header for the movies output
puts "Movies"
puts "======"
puts ""


# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all

for movie in movies
    # read the relevant columns
    title = movie["title"]
    year_released = movie["year_released"]
    rated = movie["rated"]
    
    studio = Studio.find_by({"id" =>movie["studio_id"]})
    studio_name = studio["name_studio"]

    # display a string with the relevant columns
    puts "#{title}  #{year_released}    #{rated}    #{studio_name}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all

for role in roles
    
    movie_array = Movie.find_by({"id" =>role["movie_id"]})
    movie = movie_array["title"]

    actor_array = Actor.find_by({"id" =>role["actor_id"]})
    actor = actor_array["name"]

    character =  role["character_name"]
    
    puts "#{movie}  #{actor}    #{character}"

end
