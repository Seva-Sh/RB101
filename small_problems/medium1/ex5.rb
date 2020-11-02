=begin 

Problem:
- Method displays a 4-pointed diamond in an n x n grid
- N is an odd integer
- 
- 
- 

Input: 
Output: 

Algorithm:
- Number of rows equal to given num
  Middle line has '*' * num
- stars = 1
  spaces = num / 2
- Upon each iteration, if number of stars is not equal to num, stars + 2
  and spaces - 1
  if number of stars is equal to num, then stars - 2, and spaces + 1

=end

def diamond(num)
  stars = 1
  spaces = num / 2
  row = 1
  loop do
    break if row > num
    puts (' ' * spaces) + ('*' * stars)
    if row < ((num / 2) + 1)
      stars += 2
      spaces -= 1
    else
      stars -= 2
      spaces += 1
    end
    row += 1
  end
  
end

diamond(9)