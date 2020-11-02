# Write a method that takes a positive integer as an argument
# Displays a right triangle whose sides each have n stars

def triangle(n)
  spaces = n
  stars = 0
  loop do
    puts ('*' * stars) + (' ' * spaces)
    break if stars == n
    spaces -= 1
    stars += 1
  end
end

triangle(5)
