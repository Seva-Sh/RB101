=begin 

Problem:
- Method must take in input array, containing names of people who like an item
- Return the display text as shown in the examples
- 
- 
- 

Input: arr
Output: str

Algorithm:
- We will have 5 different ways to represent the answer, this will be handled
  by an if / elsif statement integrating string interpolation
- 
- 

=end

def likes(arr)
  if arr.empty?
    'no one likes this'
  elsif arr.size == 1
    "#{arr[0]} likes this"
  elsif arr.size == 2
    "#{arr[0]} and #{arr[1]} like this"
  elsif arr.size == 3
    "#{arr[0]}, #{arr[1]} and #{arr[2]} like this"
  else  
    "#{arr[0]}, #{arr[1]} and #{arr.size - 2} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'