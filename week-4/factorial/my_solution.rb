# Factorial

# I worked on this challenge with Shea Munion


# Your Solution Below


def factorial(number)
  if number == 0
    1
  else
    i = number-1
    while i >= 1
      number = number * i
      i = i - 1
    end
    number
  end
end