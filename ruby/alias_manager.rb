#Swapping the first and last name.
#Take users names and swap thie places

print "Enter your first name:"
 first_name = gets.chomp

print "Enter your last name:"
last_name = gets.chomp


#assign var to both names
 full_name = "#{first_name} #{last_name}"

# #convert string to array
  full_name.split(' ').reverse.join(' ')

@vowels = %w( a e i o u )
@consonants = ('a'..'z').to_a - @vowels

def name_changer(name)
  name.downcase.tr(@vowels.join, @vowels.rotate.join).tr(@consonants.join, @consonants.rotate.join)
end
 alias_name = name_changer(full_name)
 p "Your alias name is #{alias_name}"



