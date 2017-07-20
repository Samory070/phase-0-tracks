

puts "What is your name?"
id = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born? "
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)?"
garlic = gets.chomp

if garlic == "y"
     death = true
else
     death = false
end

puts "Would you like to enroll in the company’s health insurance?(y/n)"
health_care = gets.chomp



