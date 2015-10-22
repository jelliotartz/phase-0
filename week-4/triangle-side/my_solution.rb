# I worked on this challenge with Sabrina


# Your Solution Below

def valid_triangle?(a, b, c)

  if
    a == 0 or b == 0 or c == 0
    p false
  elsif
    a + b>= c and a + c >= b and b + c >= a
    p true
  else
    p false
  end
end