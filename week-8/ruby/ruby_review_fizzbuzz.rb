# I worked on this challenge by myself
# This challenge took me 1.5 hours.


# Pseudocode
=begin

input: array of integers.
output: an array, either of integers or strings or both.

steps:

iterate over each element of input array

if element is divisible by 3, replace that element with "Fizz".

if element is divisible by 5, replace that element with "Buzz".

if element is divisible by 15, replace that element with "FizzBuzz".

Output the new array.

=end

# Initial Solution

def super_fizzbuzz(array)
	f = "Fizz"
	b = "Buzz"
	new_array = array.map! do |element|
		if element % 15 == 0
			element = f + b
		elsif element % 3 == 0
			element = f
		elsif element % 5 == 0
			element = b
		else
			element
		end
	end
	p new_array
end


# Driver Code
# array = [1,2,3,4,5,6,15,30,34,5,7,33,6435,2356,3456,1233,33,66,75]
# array = [1,2,3,4,5,6,15]

# super_fizzbuzz(array)


# Refactored Solution

def super_fizzbuzz(array)
	array.map! do |element|
		element = "FizzBuzz" if element % 15 == 0
		element = "Fizz" if element % 3 == 0
		element = "Buzz" if element % 5 == 0
		element
	end
end

# Driver Code
# array = [1,2,3,4,5,6,15,30,34,5,7,33,6435,2356,3456,1233,33,66,75]
array = [1,2,3,4,5,6,15]

super_fizzbuzz(array)


# Reflection

=begin

What concepts did you review or learn in this challenge?

In this challenge, I reviewed the basic logic and syntax behind
"search and replace" in ruby arrays. I began by trying to use the
.replace method, but I quickly figured out that this wouldn't work
because it wouldn't evaluate a FixNum. So rather than change the type
of each array integer, I took a different approach, and just used
element = "phrase", which seems like a more succinct and basic
approach.

What is still confusing to you about Ruby?

I feel like this question is kinda similar to asking me to judge the
size of an iceberg based on what I can see of it above the surface. I'm
pretty sure there are a lot of concepts, tools, methods, and aspects
of Ruby that I'm not familiar or comfortable with yet - but at this
point I'm not even sure what most of them are (i.e., I can't even come
close to judging how big an iceberg is, based on what I can see above
the water.)

I guess a most basic answer to this question will be that I'll just
keep picking exercises out of the Ruby review materials, so that I can
review as much as possible, and learn whatever new material I can.

What are you going to study to get more prepared for Phase 1?

I picked this review so that I could compare JS vs Ruby on a similar
exercise, much like we did with nums-commas. It wasn't a particularly
difficult challenge for me, and I plan to do a lot more of the Ruby
reviews before beginning Phase 1.

I also plan to continue reading Black's WGR, particularly the chapters
that we haven't covered yet. I haven't looked at Ruby Modules since
the basic intro I got in Codecademy, so that's at least 1 concrete
thing that I know I can do. Also procs.

Lastly, although it'll be more painful, I know what I really need is
more practice with JS. More so than Ruby, my level of familiarity with
JS syntax is less than optimal, and my ability to take an exercise,
translate it into pseudocode, implement a working solution with JS,
and intelligently refactor it is, again, less than optimal. With Ruby,
I feel at least somewhat adequate in terms of basic problem-solving
abilities. I should work to get to that same point ASAP with JS.

=end
