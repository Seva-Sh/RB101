# Write a function, persistence, that takes in a positive parameter num and 
# returns its multiplicative persistence, which is the number of times you must 
# multiply the digits in num until you reach a single digit.

# For example:

#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit

#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2

#  persistence(4) # returns 0, because 4 is already a one-digit number

=begin 

Problem:
- 
- 
- 

Input: 
Output: 

Algorithm:
- Create a loop from which we will break when we get to a one digit number
  RETURN 0 when you get one-digit right away (count == 0)

- Have a count local variable, to count the number of iterations needed

- 

=end

def persistence(int)
  return 0 if int.digits.size == 1
  count = 0
  loop do
    int = int.digits.inject(:*)
    count += 1
    break if int.digits.size == 1
  end
  count 
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
