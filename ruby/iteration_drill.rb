# Array Drills

@zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

# zombie_apocalypse_supplies.each do |supplies|
#   print "#{supplies}*"
# end
# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
# def search_list(list, checked_item)
#  match = " "
#  list.each do |item|
#  	counter = 0
#  	while counter < list.length
#       if item != checked_item 
#        match = "Found item"
#       else
#       	match = "Item not found"
#  	  end
#  	  counter += 1
#     end
#   end
#   p match
# end
# search_list(@zombie_apocalypse_supplies, "hatchet")

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
# def count_checker(list)
# 	list_arr = []
#   list.each do |item|
#     if list_arr.length < 5
#       list_arr << item
#     end
#   end
#   p list_arr
# end

 
#  count_checker(@zombie_apocalypse_supplies)

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
@other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
# def combination(list1, list2)
#    combined_list = []
#    combined_list = list1 + list2
#    combined_list.uniq!
#  end
# p combination(@zombie_apocalypse_supplies, @other_survivor_supplies)
# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
# def make_pretty(list)
# 	list.each do |animal, date|
#       print "#{animal}-#{date} * "
# 	end
# end
# make_pretty(extinct_animals)

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----

def year_check(list)
  extinction_date = {}
  list.each do |animal, year|
  	if year.to_i < 2000
      extinction_date[animal] = year
  	end
  end
  puts extinction_date	
end
p year_check(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----
