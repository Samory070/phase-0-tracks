# require gems
require 'sinatra'
require 'sqlite3'

#set up ability to respond to certain requests to certain routes
# GET /, get is the call and / is the path and sends/responds with a string
#the old way
# get '/' do
  # "<h1><a href='http://www.google.com'>Hello World!</a></h1>"
  # p params # prints in terminal
#   name = params[:name] #=> params needed to access data that is availible to the server
#   if name
#     "hello, #{name}!"
#   else
#     "Hello, you!"
#   end
# end
db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# 1st way to pass info is by query params that have a key/value
get '/' do
  "#{params[:name]} is #{params[:age]} years old." #=> params directly
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

#  Route params are like arguments to a method
get '/about/:person/:age/' do
  person = params[:person]
  age = params[:age]
  "#{person} is a programmer and #{person} is learning sinatra who is #{age}!"
end


get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data

get '/students' do
  students = db.execute("SELECT * FROM students")
  students.to_s
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "<br>Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s #student is data structure the needs to be a string
end

#Release 0
get '/contact' do
 "<p>'Don't go to 1243 Dead-man Drive, Nowhere, Mississippi, 034288'</p>"
end

# write a GET route that takes name as query parameter
get '/great_job' do
  name = params[:name]
  if name 
  "Great job #{name}"
  else
    "Great job!"
  end
end

# write GET route the displays address
get '/add_num/:num_1/:num_2' do
  result = params[:num_1].to_i  + params[:num_2].to_i
  "The result is #{result}"
end

#  write GET route that diaplays student campuses
get '/students/campus' do
  campus = params[:campus]
  if campus =="SF" || campus=="NYC" || campus=="CHI"
    students = db.execute("SELECT * FROM students WHERE campus=?",campus)
    response = ""
    students.each do |student|
     response << "ID: #{student['id']}<br>"
     response << "<br>Name: #{student['name']}<br>"
     response << "Age: #{student['age']}<br>"
     response << "Campus: #{student['campus']}<br>"
    end
  end
  response
end

