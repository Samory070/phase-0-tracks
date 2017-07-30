#Take users names and swap thie places
print "Enter your first name:"
first_name = gets.chomp

print "Enter your last name:"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
p full_name.split(' ').reverse.join(' ')



