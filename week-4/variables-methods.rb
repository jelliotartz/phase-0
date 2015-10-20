
# friendly computer that is interested in your name and favorite number

puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'what\'s your middle name?'
middle_name = gets.chomp
puts 'what\'s your last name?'
last_name = gets.chomp
puts 'Your name is ' + first_name + ' ' + middle_name + ' ' + last_name + '. What a lovely name!'

name_length = first_name.length + middle_name.length + last_name.length

puts 'did you know there are ' + name_length.to_s + ' characters in your name?'

puts 'what\'s your favorite number?'
fav_num = gets.chomp.to_i
better_num = (fav_num + 1).to_s
puts 'don\'t you think ' + better_num + ' is a bigger and better number?'

# angry boss program

puts 'what do you want?'
response = gets.chomp
puts 'WHADDAYA MEAN "' + response.upcase + '"!?! YOU\'RE FIRED!!'

# table of contents program

line_width = 50
str1="chapter 1:"
str2="getting started"
str3="page 1"
str4="chapter 2:"
str5="numbers"
str6="page 9"
str7="chapter 3:"
str8="letters"
str9="page 13"

puts(str1.ljust(line_width/3) + str2.center(line_width/3) + str3.rjust(line_width/3))
puts(str4.ljust(line_width/3) + str5.center(line_width/3) + str6.rjust(line_width/3))
puts(str7.ljust(line_width/3) + str8.center(line_width/3) + str9.rjust(line_width/3))

# How do you define a local variable?
# Local variables must start with a lowercase letter or an underscore and consist of letters, underscores, and/or digits. x, string, abc, start_value, and firstName are all valid local variable names. Ruby convention is to use underscores rather than camel case when composing local variable names from multiple words. So first_name rather than firstName. After the local variable's name, type an equal sign (with or without a preceding space), and then assign a string or integer to it.

# How do you define a method?
# Type the phrase "def ", and then enter a name for the method, following the same rules and conventions as for local variables. After the name, you can enter as many arguments as you like (in between parentheses, or following a space and no parentheses). Hit return, and enter code telling Ruby what you want the method to do. When you are done, type "end" on a new line. This signals the end of your method.


# What is the difference between a local variable and a method?

# The difference is in scope. A method allows you repeat a process multiple times, simply by calling it. A local variable stores information, but it is not repeatable process in the same sense as a method... I'm having a hard time with this, and am moving on after puzzling over it for ~30 minuntes, without making much headway.



# How do you run a ruby program from the command line?

# Type "ruby filename.rb". You can also enter the irb (the interactive ruby interpreter), which processes what you type in, instead of processing a file.

# How do you run an RSpec file from the command line?

# Type "rspec filename.rb". You'll want to make sure you are running a file that is meant to analyze your 'target file', rather than just running rspec on your code.

# What was confusing about this material? What made sense?
#
# I got hung up for a while on 4.3.1 because I was using puts in my method, which only 'displays' your output, but doesn't actually 'print' it. With some help I ended up using p instead, and then I got through it.

# I also had a hard time discussing the difference between a local variable and a method. I hope it's just going to take me a few days to get back into familiarity and comfort with ruby syntax and terminology. Right now it's a little tough to talk about it confidently.
#
#
# Here are links to my exercise solution files:
#
#
#
#