# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================

p hash [:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner += 5}
  else
    element += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.map! do |string|
  if string.kind_of?(Array)
    string.map! do |inner|
      if inner.kind_of?(Array)
        inner.map! { |innermost| innermost << "ly" }
      else
      inner << "ly"
      end
    end
  else
    string << "ly"
  end
end

p startup_names

## Jacob Crofts' awesome refactor of startup_names ##

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_to_all(array, thing_to_add)
  array.map! do |element|
    element.is_a?(Array) ? add_to_all(element, thing_to_add) : element +
      thing_to_add
  end
end

add_to_all(startup_names, "ly")

print startup_names




=begin

Reflections:

By the way, I paired with Jacob Crofts on this challenge.

What are some general rules you can apply to nested arrays?

Symbols must be referred to with the colon on the left side of the
word or phrase, even if in the array they are written on the right
side. For hashes, write the key to access the key's value. Pay
attention to the index values when "drilling down" to access nest
nuggets :)


What are some ways you can iterate over nested arrays?

Conditional statements used in conjunction with the .kind_of method is
a useful combination when iterating over nested arrays. We used the
.map! method for the actual iteration, but we queried each element
with the .kind_of? method to determine whether it its type is the
desired element (string or integer) or a nest within the array. This
allowed us to perform the desired operation on each element within
nested arrays.


Did you find any good new methods to implement or did you re-use one
you were already familiar with? What was it and why did you decide
that was a good option?

The .kind_of? method is new to me. I tried the bonus exercise with .is_a?,
which also worked, so I'm not sure how different these two methods
are. I have used .is_a? before, so in that sense .kind_of? isn't
really "new" to me, but it's still helpful to learn about another way
to accomplish a task, and maybe at some point in the future I'll
figure out whether one is better to use in certain situations than the
other (I checked ruby docs, didn't find any helpful info there to add
to this reflection.)

Also, the << "shovel" method has the same effect as the + method in
the bonus exercise where you add a string onto a nested array of
strings.

Post-script: Check out Jacob Crofts' awesome refactor solution to the
bonus challenge! It uses a ternary operator (the ? followed by : on
line 80) combined with a recursive method call (on the left side of
the : ) to keep 'drilling down' into the nested array until it has
reached the bottom; and whenever it doesn't encounter a nested array,
it does the desired task of adding "ly" to the element. Jon Clayton
loves ternaries and introduced me to them last week, and I bet he and
the coder golf community would approve of this awesome refactor!

I love ternaries every time I see them in code, but I'm not at the
level where I'm ready to employ them in my own solutions yet... maybe
me code pretty one day like these fine gentlemen :)

Instructional play-time

nested_array = [1, ["inner", "array"], 2, 3]
nested_hash = {:outer_key => {:inner_key => "Winner!"}}

# nested_array.each { |element| p element}

# p nested_array[1][1]

# p nested_hash[:outer_key][:inner_key]

nested_array.each do |element|
  if element.kind_of?(Array)
    element.each {|inner| p inner}
  end
end

=end
