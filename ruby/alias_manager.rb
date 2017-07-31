#Swapping the first and last name.
#Take users names and swap thie places

puts "Welcome to future, try your hand at a snazzy Alias Generator"
puts "Type 'quit' to quit"

#converts full_name into lowercase
def name_change(name)

#initialize variables, %w sets '' and , in (), using instance vars
@vowels = %w( a e i o u )
@consonants = ('a'..'z').to_a - @vowels

#converts string to lowercase, tr replaces str chars with the next char with the rotate method, then joining the str together
name.downcase.tr(@vowels.join, @vowels.rotate.join).tr(@consonants.join, @consonants.rotate.join)
end
  
saved_alias = {}

loop do
#ask for first name, concert to lowercase
print "To start please enter your first name:"
@first_name = gets.chomp.downcase

#ask for last name convert to lowercase
print "And now enter your last name:"
@last_name = gets.chomp.downcase

break if @first_name  == 'quit' || @last_name == 'quit'

#assign var to add both names
@full_name = @last_name + " " + @first_name

#convert string to array
@full_name = @full_name.split(' ').reverse.join(' ')

#call fullname in name_change method assigned to alias_name
 @alias_name = name_change(@full_name)
 

saved_alias['new_alias'.to_sym] = @alias_name
 

 end
#iterate through hash to pull alias name
saved_alias.each do |full_name, new_alias|
	puts "#{@alias_name} is also known as #{@full_name}"
end
puts "Thanks for trying the Alias Generator"

# loop do
# if @first_name == 'quit'
# 	puts 
# end
# end 



#method moves each vowel up one character in alphabet
# def vowel_change (vowel)
#   i = 0
# 	while i < vowel.length
# 		if vowel[i] = "u"
# 			p vowel[0]
# 		else
# 		vowel[i] == vowel
# 			p vowel[i + 1]
# 		end
# 		i += 1
# 	end
# 	end

#def vowel_change (name) 
# 	name.each do |letter|
# 		if vowels.include? letter
# 			index[letter] == index.next

# 		end
# 	end
# end 
# const_change(vowel_change(full_name))
