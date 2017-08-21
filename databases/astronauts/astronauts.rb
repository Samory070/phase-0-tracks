# Astronauts Explosion
# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("astronauts.db")
db.results_as_hash = true

# fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS astronauts(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL



# create a astronauts table (if it's not there already)
db.execute(create_table_cmd)
def create_astronaut(db, name, age)
  db.execute("INSERT INTO astronauts (name, age) VALUES (?, ?)", [name, age])
end

# create as many astronauts as needed
# 100.times do
#   create_astronaut(db, Faker::Name.name, rand(18..65))
# end


# -------------UI---------------
print "Do you wish to see the astronauts we have on staff(Y/N)"
user_input = gets.chomp.downcase

if user_input == "y"
  space_invader = db.execute("SELECT * FROM astronauts")
  space_invader.each do |person|
    puts "#{person['name']} is #{person['age']}"
  end
else
  puts "Maybe next time!"
end

  print "Would you like to add an astronaut(Y/N)"
  add_astro = gets.chomp.downcase
if add_astro == "y"
  print "Add astronaut's name: "
  name = gets.chomp

  print "Add astronaut's age: "
  age = gets.chomp.to_i
else
  puts "Oh Well!"
end

def add_astronaut(name, age)
  if add_astro == "y"
	new_astro = de.execute("INSERT INTO astronauts(name, age) VALUES (?, ?)[name, age]")
  end
end


