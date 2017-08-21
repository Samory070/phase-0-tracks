#Swapping the first and last name.
#Take users names and swap thie places

puts "Welcome to future, try your hand at a snazzy Alias Generator"


#converts full_name into lowercase


#  %w sets '' and ,
  vowels = %w( a e i o u )
  consonants = ('a'..'z').to_a - vowels

def name_swap(real_name)
  reverse_name = real_name.downcase.split(' ').reverse.join(' ')
  return reverse_name
end

def vowel_change(real_name)
  vowels = %w[ a e i o u ]   # =>  %w sets '' and ,
  real_name = real_name.downcase.chars
  real_name.map! do |letter|
    if vowels.include?(letter)
    	letter = vowels.rotate[vowels.index(letter)]
    else
      letter = letter
    end
  end
  return real_name.join
end
 

def constant_change(real_name)
  consonants = "bcdfghjklmnpqrstvwxyz"  # =>('a'..'z').to_a - %w[ a e i o u ]
  consonants = consonants.chars
  real_name = real_name.downcase.chars
  real_name.map! do |letter|
    if consonants.include?(letter)
     letter = consonants.rotate[consonants.index(letter)]
    else
      letter = letter
    end
  end
  return real_name.join
end

def full_name(real_name)
	constant_change(vowel_change(name_swap(real_name)))
end


# p name_swap("samory harris")
# p vowel_change("samory harris")
# p constant_change("samory harris")
# p full_name("teressa jones")
# name = "Samory Harris".downcase.split(' ').reverse.join(' ')
# p name.class

saved_alias = {}

loop do 
  # Ask for first name, change input to lowercase letters
  puts "What is your name?"
  user_name = gets.chomp

  break if user_name == "quit" 

  # Swap names
  # full_name = last_name +  " " + first_name


  # Iterate through the array and change vowels and consonants  
  fakename = name_swap(user_name)

  saved_alias[full_name(user_name)] = fakename
   
  # Access data in the hash & iterate
  saved_alias.each do |full_name, fakename|
    puts "#{full_name} is actually #{fakename} which is #{user_name}"
  end 
end





# def name_change(name)

# #initialize variables, %w sets '' and , in (), using instance vars
# @owels = %w( a e i o u )
# @onsonants = ('a'..'z').to_a - vowels

#converts string to lowercase, tr replaces str chars with the next char with the rotate method, then joining the str together
# name.downcase.tr(@vowels.join, @vowels.rotate.join).tr(@consonants.join, @consonants.rotate.join)
# end
  

# saved_alias = []
# name_change_count = 0

# until name_change_count == 2
# #ask for first name, concert to lowercase
# print "To start please enter your first name:"
# @first_name = gets.chomp.downcase

# #ask for last name convert to lowercase
# print "And now enter your last name:"
# @last_name = gets.chomp.downcase

# break if @first_name  == 'quit' || @last_name == 'quit'

# #assign var to add both names
# @full_name = @last_name + " " + @first_name

# #convert string to array
# p @full_name = @full_name.split(' ').reverse.join(' ')


# #call fullname in name_change method assigned to alias_name
#  @alias_name = name_change(@full_name)
 

# saved_alias['new_alias'.to_sym] = @alias_name
 # end

#iterate through hash to pull alias name
# saved_alias.each do |full_name, new_alias|
# 	puts "#{@alias_name} is also known as #{@full_name}"
# end
# puts "Thanks for trying the Alias Generator"

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


#take the name 
# separate the name, reverse order, 
# them join them back togther




  		


