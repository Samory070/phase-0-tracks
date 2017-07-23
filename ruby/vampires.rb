#Vetting process for employees to check if they're a possible vampire.
 current_year = 2017

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born? "
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)?"
garlic = gets.chomp.upcase

puts "Would you like to enroll in the company’s health insurance?(y/n)"
health_care = gets.chomp.upcase

age = current_year - birth_year



#case statement
case 
when name == "Drake Cula" || name == "Tu Fang" then " Definitely a vampire."
when garlic == "N" && health_care == "N" then puts "Almost certainly a vampire."
when garlic == "N" && health_care == "Y" then puts "Probably a vampire."
when health_care == "N" && garlic == "Y" then puts "Probably a vampire."  
when age && garlic == "Y" && health_care == "Y"  then  puts "Probably not a vampire."
else "Results inconclusive."
end