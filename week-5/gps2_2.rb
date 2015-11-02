# Psuedocode
# Define a method that makes hash
# create a new list
# item, quantity

def new_list(item, quantity)
   groceries_list = {item => quantity}
end

groceries_list = new_list("lemonade", 2 )

# pseudocode

# define a method that adds an item to our list

# add a key/value pair to our existing list

# output updated grocery list

def add_item(item, quantity, groceries_list)
  groceries_list[item] = quantity
end

add_item("tomatoes", 3, groceries_list)
add_item("ice cream", 4, groceries_list)
add_item("onion", 1, groceries_list)

# psuedocode
# define method that remoces item from list
# remove item from groceries list
# output update list

def remove_item(items, groceries_list)
  groceries_list.delete(items)
end

remove_item("lemonade", groceries_list)

# pseudocode

# define a method that updates the quantities for items in groceries_list

# update quantity
# output updated groceries_list

def update_quantity(item, quantity, groceries_list)
  groceries_list[item] = quantity
end

update_quantity("ice cream", 1, groceries_list)

# psuedocode
# make method that prints out list
# make list neat and readable
# output printed list

def print_do(groceries_list)
  groceries_list.each {|item, quantity| puts "#{item} : #{quantity}" }
end

print_do(groceries_list)