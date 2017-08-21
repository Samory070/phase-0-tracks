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
100.times do
  create_astronaut(db, Faker::Name.name, rand(18..65))
end