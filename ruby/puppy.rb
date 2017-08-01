#Puppy class
class Puppy
	 
	def bark
		puts 'woof woof woof!'
	end
	def roll
		puts 'Roll over girl or boy!'
	end
end

#Test function, does not work outside of class
def up
	puts 'Up boy!'
end

#Puppy instances
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p duchess == fido
#p fido.instance_of?(Array)
#p fido.instance_of?(Puppy)

#Before string added
p str = String.new
p str.length
p str.empty?
p str += "Hey!"

#After string added
p str.length
p str.empty?

#New string set to var
greeting = String.new('Hello World!')

#Availible methods for classes and strings
#p greeting.methods.sort
#p '-' * 80
#p fido.methods.sort 
greeting.upcase + '!'

p fido.roll
p duchess.bark
p fido.up





