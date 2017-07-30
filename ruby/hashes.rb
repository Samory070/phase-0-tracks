# Prompt the user for their information.
# Convert user input into the appropriate data type if needed.
# Print the hash to the screen when the user has answered all of the questions.
# Give the user the chance to update a key. Program should ask for a new value and update the :decor_theme key.
# Print the latest version of the hash, and exit the program.
    

puts "Welcome to the Client Decor Survey. Please fill out this questionaire to achieve your ultimate interior setup"
current_client = {}

# .to-sym changes "name" to a symbol
puts "Enter client's name:"
current_client["name".to_sym] = gets.chomp

puts "Enter client's age:"
current_client[:age] = gets.chomp.to_i

puts "How many children do you have?:"
current_client[:number_of_kids] = gets.chomp.to_i

puts "What decor theme do you perfer?:"
current_client[:decor_theme] = gets.chomp

puts "Do you have any pets?(y/n)"
user_input = gets.chomp.upcase

    if user_input == "N"
      pet_owner = false
    elsif user_input == "Y"
      pet_owner = true
    
    else 
      pet_owner = nil
    end

current_client[:pet_owner] = pet_owner

puts "Here is your questionaire entries: #{current_client}"

puts "Would you like to update any of the fields or values? type 'yes', or type 'none' to see print out of entries."
  response = gets.chomp.upcase
  if response == "YES"
    puts "Enter a key (e.g. decor_theme, name) that needs updating."
    user_answer = gets.chomp
    if user_answer == "name"
      puts "What name change would you like to make?"
      current_client["name"] = gets.chomp!
    elsif user_answer == "age"
      puts "What change to age would you like to make?"
  current_client["age"] = gets.chomp!
    elsif user_answer == "number_of_kids"
    puts "How many kids do you have!"
    current_client["number_of_kids"] = gets.chomp!
    elsif user_answer == "decor_theme"
    puts "What decor interests you?"
    current_client["decor_theme"] = gets.chomp!
    elsif user_answer == "pet_owner"
      puts "Do you have any pets?(y/n)"
      current_client["pet_owner"] = gets.chomp!
    else
    puts "#{current_client}"
    end
  end
  
  puts "Here are your updated entries: #{current_client}"

    
  
    
 
    
    
    