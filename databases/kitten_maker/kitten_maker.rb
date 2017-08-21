# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)
# a relation data is rows, columns, keys, foreign keys and how do we take that data
#and use it in a ruby, java, or phython(Object O L)

# require gems
require 'sqlite3' 
require 'faker' # gem that allows you to create fake data fot testing(fakes name, ages)

# create SQLite3 database
# creating a new database stared in a var db
db = SQLite3::Database.new("kittens.db") # => database instance
#db.execute("SELECT * FROM kittens") # => would run SQL command
db.results_as_hash = true # => called on database instance to make intance a hash

# learn about fancy string delimiters
# declaring a string in ruby SQL can be anything(taco)
#checks to see if table exists
# str = "hi there!" is the same as create_table_cmd
create_table_cmd = <<-SQL # replaces double <" ">
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
#pass string in
db.execute(create_table_cmd)

# add a test kitten hard coded in
#db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion

# ? are placeholders name for 1st ? and age for 2nd ?
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

# makes some kittens
# 
100.times do
   print create_kitten(db, Faker::Name.name, 0) # :: scope resolution operator
end



# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class # => Array
kittens.each do |kitten|
    puts "#{kitten['name']} is #{kitten['age']}" # uses strings not symbols vs index
end


