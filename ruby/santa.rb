
class Reindeer
	#Declared instance methods
	def initialize(name)
		@name = name
		@location = "the North Pole"
	end

	def take_off(alt)
		puts "#{@name} took off"
		puts "#{@name} ascended to #{alt} feet!"
	end

	def land(location)
		puts "#{@name} landed safely in #{location}"
		@location = location # => updates location var
	end
	def about
		puts "Name: #{@name}"
		puts "location: #{@location}"
	end
	
	def name #getter method make attributes availiable outside class
		@name
	end

	def location
		@location
	end

	def name=(new_name) # setter/writer methods for changinf attributes
		@name = new_name
	end
end

# reindeer = Reindeer.new("Blitzen") #Initialize instance method arg called here
# reindeer.about # instance methods
# reindeer.take_off(3000)
# reindeer.land("BC")
# reindeer.about


# reindeer = Reindeer.new("Rudolph")
# reindeer.about
# reindeer.take_off(5000)
# reindeer.land("Paris")
# reindeer.about

# reindeer = Reindeer.new("Dasher")
# puts "#{reindeer.name} is in #{reindeer.location}."
# reindeer.take_off(10000)
# reindeer.land("Bombay")
# reindeer.name = "The Reindeer Formerly Known As Dasher"
#  puts "#{reindeer.name} is in #{reindeer.location}."




class Santa
	
	attr_reader :gender, :ethnicity, :reindeer_ranking, :age
	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def initialize(gender, ethnicity)
		print 'Initializing Santa instance ...'
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
end

#Pseudocode
#Initialize empty array to store Santa instances in
# Initialize gender array with gender identities stored as strings
# Initialize ethnicity array with ethnicities stored as strings
# Loop X number of times
#   Add random item from both gender_array and ethnicity_array to santa_instance_array


santas = []

genders_array = ["agender", "female", "bigender", "male", "pan", "gender fluid", "trigenger"]

ethnicities_array = ["Black", "Latino", "White", "Japanese", "Afrikaans", "Romanian", "Jamaican", "Turkish", "Instanbul", "Cuban"]

#Driver Code

50.times do |i|
  santas << Santa.new(genders_array[i], ethnicities_array[i])
end

p santas








