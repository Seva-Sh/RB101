# You live in the city of Cartesia where all roads are laid out in a perfect 
# grid. You arrived ten minutes too early to an appointment, so you decided to 
# take the opportunity to go for a short walk. The city provides its citizens 
# with a Walk Generating App on their phones -- everytime you press the button 
# it sends you an array of one-letter strings representing directions to walk 
# (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each 
# letter (direction) and you know it takes you one minute to traverse one city 
# block, so create a function that will return true if the walk the app gives 
# you will take you exactly ten minutes (you don't want to be early or late!) 
# and will, of course, return you to your starting point. Return false otherwise.

# Note: you will always receive a valid array containing a random assortment of 
# direction letters ('n', 's', 'e', or 'w' only). It will never give you an 
# empty array (that's not a walk, that's standing still!).

=begin 

Problem:
- 
- 
- 

Input: 
Output: 

Algorithm:
- We have to keep track of both up / down movement and left / right movement
  To do that we will have two local variables
    horizontal moves -> w + 1, e - 1
    vertical moves -> n + 1, s - 1
  Should be exactly 10 moves  
- 

- 

=end

def is_valid_walk(path)
  return false if path.size != 10

  hor_moves = 0
  ver_moves = 0
  path.each do |move|
    if move == 'n'
      ver_moves += 1
    elsif move == 's'
      ver_moves -= 1
    elsif move == 'w'
      hor_moves += 1
    else  
      hor_moves -= 1
    end
  end
  return (hor_moves == 0 && ver_moves == 0) ? true : false
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false