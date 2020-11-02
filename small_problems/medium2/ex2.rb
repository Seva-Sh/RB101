=begin 

Problem:
- Method check if the word can be spelled from the given set of blocks
  returns true if yes and false otherwise
- 
- 

Input: str
Output: boolean

Algorithm:
- Build an array of arrays that will represent the spelling blocks and assign it to arr
- Iterate ove each char of the string object
    find the block that includes the current letter
      check if the word includes the second letter of the block
      if yes then return false
- Return true if all the checks pass

=end

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], 
          ['V', 'I'], ['L', 'Y'], ['Z', "M"]]

def block_word?(str)
  str = str.upcase
  str.each_char do |char|
    BLOCKS.each do |block|
      if block.include?(char)
        if block[0] == char
          return false if str.include?(block[1])
        else  
          return false if str.include?(block[0])
        end
      end
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true