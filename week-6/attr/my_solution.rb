#Attr Methods

# I worked on this challenge by myself

# I spent 3 hours on this challenge.

class NameData
  def name
    @name = "James"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}, how wonderful to see you today!"
  end
end

greet = Greetings.new

greet.hello



# Reflection

=begin

Release 1

What are these methods doing?

The methods in this release are demonstrating how to call instance
methods outside of a class. Additionally, they are demonstrating
"assignment methods", e.g. change_my_name=(new name,
change_my_age=(new age), etc. These are generally referred to as
"setter" methods, in the sense that their purpose is to change an
instance variable (@name, @age, etc) that has already been set earlier
in the class.

How are they modifying or returning the value of instance variables?

The "getter" methods set up the 3 instance variables in the initialize
method. The three "what_is_*" methods simply output the result of
these getter methods. The three "setter" methods ("change_my_*")
modify the instance variables by setting the instance variable equal
to the argument that is added to the setter method. Thus when you call
the print_info method (instance_of_profile.print_info), it will output
the result of these "setter" methods that have modified the getter
methods.

Release 2

What changed between the last release and this release?

attr_reader :age was added at the beginning of the Profile class.
Consequently, the method called what_is_age has been commented out,
becuase it is no longer necessary. This means that the method call on
line 58 (previously instance_of_profile.what_is_age) is now
instance_of_profile.age.

What was replaced?

The previous question answers this: the what_is_age method, and its
call on line 58.

Is this code simpler than the last?

Yes. Looks like a real time-saver!

Release 3

What changed between the last release and this release?

attr_writer :age was added at the beginning of the Profile class.
Consequently, the change_my_age method has been commented out, becuase
it is no longer necessary. This means that the method call on line 68
(previously instance_of_profile.change_my_age) is now
instance_of_profile.age.

Note that this is the same method call as is used on line 58, for the
call of the **original** age - with both attr_reader and writer set
for age, it can be 'get' and 'set' with same method call.

What was replaced?

the change_my_age method, and its call on line 68.

Is this code simpler than the last?

Yep. The simplicity of attr_* continues to unfold as we progress in
this challenge :) I actually really like the format of this challenge,
it's very helpful and instructional!


Reflections on my solution:

What is a reader method?

A reader method defines an instance variable within a class, which can
then be accessed in other class methods.

What is a writer method?

A writer method changes the value of an instance variable, setting it
to a new value.

What do the attr methods do for you?

attr methods include attr_reader, _writer, and _accessor. These
methods allow you to access and change instance variables without
explicitly writing out reader and writer methods. They basically save
you typing time and make code easier to read.

Should you always use an accessor to cover your bases? Why or why not?

No! It may seem like this is the easiest way to just cover all the
bases, but it could compromise the security of your data and lead to
problems regarding access. It could also result in difficult debugging
problems. Using only attr_reader or _writer safeguards your instance
variabes against accidentally giving other methods and classes too
much access to their data.


What is confusing to you about these methods?

I learned something interesting about the initialize method in this
challenge. Initially I defined an initialize method in NameData, where
I defined the instance variable @name with "James". But when I tried
to access @name in Greetings#hello, I raised an NoMethodError
exception, saying that 'initialize' is a private method. This reminded
me of a helpful little page I read in Pine's book (p. 107), where he
talks about new vs. initialize, and he mentions that you never call
initialize because the method new "inherently" calls initialize...
it's somewhat circular and confusing, but long story short, I realized
that I need to name the method in NameData something besides
initialize in order to access it in another class.

For clarity, here's the code I was trying to run, that didn't work:


class NameData
  def initialize
    @name = "James"
  end
end


class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.initialize}, how wonderful to see you today!"
  end
end

greet = Greetings.new

greet.hello

This will result in the NoMethodError described above. Lesson: don't
call initialize in a separate method!

=end