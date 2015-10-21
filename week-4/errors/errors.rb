# Analyze the Errors

# I worked on this challenge by myself.
# I spent 2.25 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => syntax
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => the error message displays the text at the end of the file (i.e., because it read all
# => the way to the end and did not find the 'end' it was searching for)
# 6. Why did the interpreter give you this error?
# => at line 16 there needs to be an additional end keyword to end the while loop, in
# => addition to the end signaling the end of the cartman_hates method.
#

# --- error -------------------------------------------------------

"south_park"

# 1. What is the line number where the error occurs?
# => line 39
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => in `<main>': undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# => The error is at the beginning of the word south_park
# 5. Why did the interpreter give you this error?
# => the interpreter hit an identifier it can't resolve as a variable or method name.


# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => 55
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => in `<main>': undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# => At the parentheses. When the interpreter hits the parentheses, it realizes that the
# => method is undefined.
# 5. Why did the interpreter give you this error?
# => The method cartman() was not defined. Adding def before cartman() and end on the
# => following line defines the method.


# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 74
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => At line 78, there is a call for an argument name ('I hate Kyle') when the defined
# => method has no arguments
# 5. Why did the interpreter give you this error?
# => The method cartmans_phrase has no arguments (i.e., it has no parentheses after it.).



# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts "offensive message"
end

cartman_says('x')

# 1. What is the line number where the error occurs?
# => 96
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => Puts requires a string, not an argument, as is given on line 97.
# 5. Why did the interpreter give you this error?
# => We need to turn create a string after puts on line 97, and then create an argument on
# => line 100.

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# => 122
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => On line 122, 2 arguments are defined.
# 5. Why did the interpreter give you this error?
# => On line 122, the method cartmans_lie calls for 2 arguments. The call for the method
# => on line 126 only provides 1 argument

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')


# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 149
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => It begins at the first quotation mark
# 5. Why did the interpreter give you this error?
# => An integer cannot by multiplied by a string. A string CAN, however, be multiplied by
# => an integer. i.e., "Respect my authoritay" sets of 5 doesn't make sense to Ruby;
# => 5 sets of "Respect my authoritay" does make sense. Reversing the string/integer order # => of this phrase solves this error.

# original error: 5 * "Respect my authoritay!"


# --- error -------------------------------------------------------

amount_of_kfc_left = 20


# 1. What is the line number where the error occurs?
# => 169
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => in `/': divided by 0
# 4. Where is the error in the code?
# => At the end of line 169, the code attempts to divide 20 by 0
# 5. Why did the interpreter give you this error?
# => Nothing can be divided by zero.

# original error: amount_of_kfc_left = 20/0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 187
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => in `require_relative': cannot load such file -- /Users/jelliotartz/Desktop/DBC-
# => stuff/phase-0/week-4/errors/cartmans_essay.md
# 4. Where is the error in the code?
# => At "cartmans_essay.md", which is a non-existant file in this directory.
# 5. Why did the interpreter give you this error?
# => Because require relative looks for the file in a specific location- the same
# => directory that this file is in.


# original error: require_relative "cartmans_essay.md"

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
# Which error was the most difficult to read?
# => I spent the most time on the method cartmans_phrase that puts "I'm not fat; I'm big
# => boned!".
#
# How did you figure out what the issue with the error was?
# => I searched Ruby ArgumentError online, but did not have much luck finding an
# => explanation of how to deal with ArgumentError. After fruitlessly searching for a
# => while, I remembered that I had skimmed something about method arguments in Chapter 2
# => of the Well-Grounded Rubyist. I went back to it (pp. 48-50) and started playing around
# => with the asterisk, and adding argument/arguments to the method. Eventually I realized
# => it would pass if I just added an argument (x) to the method.
#
# Were you able to determine why each error message happened based on the code?
# => Yeah. I feel a little more confident about assessing errors after this exercise. I
# => was dismayed at the lack of helpful search results on the web though. The
# => StackOverflow responses generally didn't lead me to a deeper understanding of what
# => each error "meant." Perhaps I just need to write and read more code, and things will
# => get easier.
#
# When you encounter errors in your future code, what process will you follow to help you
# debug?
# => I'll try the web-search route, as that is a pretty standard approach. Maybe look in
# => the Well-Grounded Rubyist as well. I was disappointed to see that neither 'error' nor
# => 'exception' are listed in Pine's index... I feel like maybe I'm missing some big
# => resource that deals specifically with Ruby errors. Or maybe I need to wait until I
# => learn about rescuing exceptions more thoroughly. In the meantime, I'll continue
# => reading the DBC-recommended websites and the WGR.
#
#
#
#



