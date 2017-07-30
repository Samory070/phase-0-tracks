# Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.

fruits = [
  'apple',
  'orange',
  'pineapple',
  'kiwi',
  'starfruit'
  ]

animal_cracker = {
  'bunny' => 'intact',
  'camel' => 'intact',
  'elephant' => 'injured',
  'giraffe' => 'intact', 
  'rhino' => 'intact',
  'gorilla' => 'intact',
  'Bambi' => 'injured'
  }
  
  
puts "Check out the status of your animal cracker!"

#iterate through hash with .each
animal_cracker.each do |animal, status|
	p "The #{animal} has a status of #{status}"
end

#1 A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
p "Remove item if length is less than 5"
puts "Original data: #{fruit}"
p "After .each/.length called: " 
fruits.each do |x|
  next if fruits.length < 5
  fruits.delete x
  p fruits
end

p animal_cracker.delete_if{|animal, status| animal.length <= 5}


#2 A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
p "Sorts array and display everything except apple using .delete"
p fruits.select {|fruit| fruit == "kiwi"}
p animal_cracker.select {|animal, status| animal != "rhino"}



#3 #A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

fruits.map do |fruit|
  if fruit.length.odd?
    puts "Displays odd number lettered fruit!: #{fruit}"
  end
end
p fruits.keep_if {|fruit| fruit.length.odd?}

p animal_cracker.keep_if {|animal, status| status == "injured" }

#4 A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
p fruits.drop_while {| bowl | bowl != "starfruit" }

p animal_cracker.reject {|animal, status| status == "intact"}


 


