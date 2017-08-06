class Santa
	
	attr_reader :ethnicity, :reindeer_ranking, :age
	attr_accessor :gender
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
		@age =  rand(0..140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def celebrate_birthday
    	@age += 1
    end

	def get_mad_at(reindeer_name)
	  @reindeer_ranking << reindeer_ranking.delete(reindeer_name)
 	end

	# def gender=(new_gender)
 #    	@gender = new_gender
 #  	end

 #  	def age
 #      @age
 #  	end

	# def ethnicity
 # 	  @ethnicity
	# end

end

#Pseudocode
#Initialize empty array to store Santa instances in
# Initialize gender array with gender identities stored as strings
# Initialize ethnicity array with ethnicities stored as strings
# Loop X number of times to make new santa instances



santas = []

genders_array = ["agender", "female", "bigender", "male", "pan", "gender fluid", "trigenger"]

ethnicities_array = ["Black", "Latino", "White", "Japanese", "Afrikaans", "Romanian", "Jamaican", "Turkish", "Instanbul", "Cuban"]

#Driver Code
Bob = Santa.new('female', 'Cuban') 

p santas
p Bob.celebrate_birthday
p Bob.get_mad_at("Prancer")
p Bob.gender = "bi"
p Bob.age 
p Bob.ethnicity

1000.times do 
  santas << Santa.new(genders_array.sample, ethnicities_array.sample)
end









