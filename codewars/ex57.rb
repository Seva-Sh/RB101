=begin 

Problem:
- Method takes a hash list of users and finds the nexus
  the user whose rank is the closest or is equal to his honor
- Return the rank of this user
- Key is the rank, value is the honor
- If nobody has an exact match, return the rank whose user comes closest
- If there are multiple, return the one with the lowest rank

Input: hsh
Output: int

Algorithm:
- If no equals, then we have to calculate the closest (smallest absolute value)
- First we will have a helper method that will return an array of all ranks
  which will have equal rank and honor. 
- Only if get_equals will return an empty array, we will use a helper method
  to build a hash of closest cases (rank -> absolute difference)
- Check if there are multiple ranks with the same lowest difference
  select only the key/pair values that have same lowest diff value

=end

def get_equals(hsh)
  arr = []
  hsh.each do |k, v|
    arr << k if k == v
  end

  arr
end

def get_diff_pairs(hsh)
  new_hsh = {}
  hsh.each do |k, v|
    new_hsh[k] = (k - v).abs
  end
  new_hsh
end

def nexus(hsh)
  equals = get_equals(hsh)
  
  if equals.empty?
    hsh = get_diff_pairs(hsh)
  else
    return equals.sort[0]
  end

  low_val = hsh.values.min
  hsh = hsh.select { |k, v| v == low_val }
  hsh.keys.min
end

users = {1 => 3, 3 => 3, 5 => 1}
p nexus(users) == 3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
p nexus(users) #== 3
