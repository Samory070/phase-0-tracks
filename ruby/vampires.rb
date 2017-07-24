# 4.5 Solo Challenge: Control Flow Practice
#Vetting process for employees to check if they're a possible vampire.
current_year = 2017


puts "Here at Werewolf Inc, we have a few questions as part as out vetting proceess. We don't want any vampires sneaking in.


  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  age = gets.chomp.to_i
  
  puts "What year were you born? "
  birth_year = gets.chomp.to_i
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)?"
  garlic_bread = gets.chomp.upcase
  
  puts "Would you like to enroll in the company’s health insurance?(y/n)"
  health_care = gets.chomp.upcase

  #checks if the birth_year given matches age
  age_check = current_year - birth_year
  #checks if to see if age and birth_year given matches current_year
  year_check = age + birth_year
  
  #setting var. to true/false in if statement
  if garlic_bread == "Y"
  garlic_bread = true
  else
    garlic_bread = false
  end
  
  if health_care == "Y"
  	health_care = true
  else
  	health_care = false
  end
  
  if name == "Tu Fang" 
  	name = false
  elsif name == "Drake Cula"
  	name = false
  else
 	 name = true
  end




#case statement logic
  case 
    when name == false  then " Definitely a vampire."
    when year_check != current_year && garlic_bread == false && health_care == false then puts "Almost certainly a vampire."
    when year_check != current_year && health_care == false || garlic_bread == false then puts "Probably a vampire."  
    when year_check == current_year && garlic_bread == true && health_care == true  then  puts "Probably not a vampire."
    else "Results inconclusive."
    end
    user_input -= 1
  end
  

  
  
  # #case statement
#   case 
#   when name == "Drake Cula" || name == "Tu Fang" then " Definitely a vampire."
#   when garlic_bread == "N" && health_care == "N" then p "Almost certainly a vampire."
#   when garlic_bread == "N" && health_care == "Y" then p "Probably a vampire."
#   when (year_check != current_year)health_care == "N" && garlic_bread == "Y" then p "Probably a vampire."  
#   when year_check == current_year && garlic_bread == "Y" && health_care == "Y"  then  p "Probably not a vampire."
#   else "Results inconclusive."
#   end
#   user_input -= 1
# end

