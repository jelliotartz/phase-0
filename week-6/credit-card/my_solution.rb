# Class Warfare, Validate a Credit Card Number





# I worked on this challenge with Syema Ailia.
# I spent 5 hours on this challenge.


# Pseudocode

# Input: A 16-digit integer
# Output: Boolean (true or false)
# Steps:
  # create class CreditCard

  # create initialize method that takes 1 argument (an integer)

  # IF credit card number is not equal to 16 digits, you should receive
  # an argument error.

  # END

  # Split up 16-digit integer into individual digits.

  # Starting at 1st integer, double every other integer.

  # Split this new list of numbers into individual digits to account for
  # double digits in list.

  # Add up all the digits.

  # Divide results by 10.

  # If no remainder, output true.

  # If there is a remainder, output false.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard
  def initialize(input)
    @num1 = input
    if @num1.to_s.size != 16
      raise ArgumentError.new "Please enter a 16 digit number."
    end
  end

  def check_card
    require 'scanf'
    num2 = @num1.to_s.scanf("%1d" * @num1.to_s.size)
    num3 = num2.map.with_index { |value, index| index % 2 == 1 ? value : value * 2 }
    num4 = num3.join.to_i
    num5 = num4.to_s.scanf("%1d" * num4.to_s.size)
    num6 = num5.reduce(:+)
    if num6 % 10 == 0
      return true
    else
      return false
    end
  end
end



# Refactored Solution

class CreditCard
  def initialize(input)
    @input = input
    raise ArgumentError.new "Please enter a 16 digit number." if
      @input.to_s.size != 16
  end

  def check_card
    require 'scanf'
    input_array = @input.to_s.scanf("%1d" * @input.to_s.size)
    new_integer = input_array.map.with_index { |value, index| index %
      2 != 0 ? value : value * 2 }.join
    digit_sum = new_integer.scanf("%1d" * new_integer.to_s.size).reduce(:+)
    digit_sum % 10 == 0 ? true : false
  end
end


# Driver code

# test2 = CreditCard.new(4408041234567901)

# test2.check_card



# Reflection

=begin

What was the most difficult part of this challenge for you and your pair?

Truthfully, no steps in this challenge were completed without
struggle. We succeeded in raising the argument error and splitting up
the input integer (we tried various methods involving converting it to
both an array and a string, and eventually settled on an array of
integers), but then we hit a wall figuring out how to double every
other integer in the new array. Eventually we decided to research this
individually, and I got .map.with_index to work for me. We had been
playing with this during the pairing session, and I think we just
weren't typing the syntax right or something. Eventually I got it to
perform the desired operation (multiplying every other index value by
2). Joining, re-splitting, and adding the integers was also a dog-
fight, but eventually I wrangled it into an rspec-worthy submission.

I ran into a peculiar situation when I tried to add all the numbers
together, and ruby told me I was dealing with a "Bignum" for the first
time. I was aware that there is a difference between ruby Fixnums and
Bignums, I just hadn't run into it while writing code before. And
apparently our trusty rubydoc methods like .inject and .reduce don't
work on bignums. Thus I resorted to "re-splitting" the new integer
again, probably not the best way as it smacks of DRY issues.

What new methods did you find to help you when you refactored?

I learned about .scanf, which I had never seen before. This is a
method that allows you to take a string and turn it into individual
components, based on whatever method you specify. Here's a little info
about .scanf:

First, you have to 'require scanf', I think because it is its own
module. Hopefully at some point I'll know whether this is correct, and
if so, what it means. scanf scans a string according to a format, and
returns an array of matches between the format and the input. It takes
a ** conversion specifier ** which tells scanf what form each
particular matched substring should be converted to. In this
challenge, the conversion specifier is (“%d”), for decimal number;
other conversion specifiers include %s (string), %f (float), %x
(hexadecimal).

The format string can also contain characters other than those in the
conversion specifiers. Scanning stops when any input character fails
to match the specifications in the format string, or when input is
exhausted, or when everything in the format string has been matched.

What concepts or learnings were you able to solidify in this challenge?

Getting more practice with .map.with_index was helpful. I was glad
that I was able to use .reduce and .join without too much trouble.
Speaking generally, I'm still pretty slow when it comes to proper and
efficient use of ruby doc methods, and today I was definitely tripped
up by issues of converting my input to various forms throughout the
series of processes needed to complete the challenge. It feels like I
changed the form of the original integer 17367326762475 times during
this challenge; the actual number is 4, but with a lot of flailing
hidden behind that small number.

Also, I implemented my first ternary in this challenge! The ternary in
the .map.with_index was implemented with the help of some internet
searches (searching to find out how to operate on only a select number
of indices), but I thought up and executed the boolean output ternary
completely on my own! It's pretty basic, but I'm proud of it
nonetheless!

=end
