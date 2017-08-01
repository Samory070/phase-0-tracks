# class Puppy

# 	def initialize
# 		puts "Initializing new puppy instance ..."
# 	end

  # def fetch(toy)
  #   puts "I brought back the #{toy}!"
  #   toy
  # end
  
  # def speak(int)
  # 	puts 'Woof!' * int
  # end

  # def roll_over
  # 	puts '*Rolls over*'
  # end

  # def dog_years(a)
  # 	b = a * 7
  # 	puts "You are #{b} in dog years"
  # end	
  
  # def jump
  # 	puts 'Up boy!'
  # end

# end

# p 'Created new Puppy class' 
# fido = Puppy.new 
# sassy = Puppy.new 
# lou = Puppy.new
# sassy.fetch('ball')
# fido.speak(3)
# sassy.roll_over
# fido.dog_years(28)

class Planets
	attr_accessor :value
	class << self
		
		def initialize
		 puts "Initialized!"
		end

		def spin
			puts 'Spin baby spin!'
		end

		def rotate
			puts 'Going around the world'
		end
	end	
end

#Initialize planet instances
earth = Planets.new
mars = Planets.new
saturn = Planets.new

#Initialize new_arr with earth, mars, ans saturn instances
new_arr = [earth,mars, saturn]

#Initializes array and iterator.
planets_arr = []

#Iterate through numbers range 50 times while creating new instances each time
#Assign vars to planets instances calling instance methods  
numbers = (1..50).map do |n| 
  number = Planets.new
  number.value = n
  number
  spinning = Planets.spin
  rotating = Planets.rotate
end


p planets_arr



# loop do 
# new_planets = Planets.new(50)
# break if new_planets >= 50
# end



