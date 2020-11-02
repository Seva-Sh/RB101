=begin 

Problem:
- Given 2 int `n` and `k`, remove `k` digits from n 
- Return the lowest num possible, without changing the order of the digits in `n`
- Return the result as a string
- 
- 

Input: int, int
Output: str

Algorithm:
- Build an array of all the possible cases that we can have by removing k number
  of element 
- Considering the logic for element removal
  start with k -1 at ind 0 and remove all the rest using iteration, then 
  move to index 1 as a starting point, and so on
- 

=end

def get_subs(arr, num)
  0.upto(arr.size - 1) do |idx|
    
  end
end

def solve
  
end

p solve(123056,1) == '12056'
p solve(123056,2) == '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'
