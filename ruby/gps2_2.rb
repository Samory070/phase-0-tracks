# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # initialize hash 
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash, of grocery items


#ask for list name and initializes hash
def create_list(string)
	 groceries = string.split(" ")
	 list_items = Hash.new
	 groceries.each do |items|
	 	list_items[items] = 1
	 end
  list_items
end


 puts create_list("lemonade tomatoes onions icecream ")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: get item name from user, get quanity from user
# output: return hash


# Method to remove an item from the list
# input: item list 
# steps: use .each to iterate and select key/value pairs
# output: updated hash

# Method to update the quantity of an item
# input: item list
# steps: use .each to match a given key and update quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: calls item list takes params
# steps: .each used on items list 
# output: prints list name, item name, quantity puts "-" * 60





