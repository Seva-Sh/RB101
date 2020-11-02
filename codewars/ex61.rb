=begin 

Problem:
- Given an array containing hashes of names
- Return a string fromatted as a list of names separated by commas except 
  for the alst two names, which will be separated by an ampersand
- 
- 
- 

Input: arr of hashes
Output: str

Algorithm:
- We will three cases -> 1 name, 2 names, 3 or more names
- Build ar array of names from the hash
- 

=end

def build_str(arr)
  str = ''
  0.upto(arr.size - 1) do |idx|
    if idx == (arr.size - 1)
      str += "#{arr[idx]}"
    elsif idx == (arr.size - 2)
      str += "#{arr[idx]} & "
    else 
      str += "#{arr[idx]}, "
    end
  end
  str
end

def list(arr)
  names = []
  arr.each do |hsh|
    names << hsh.values[0]
  end
  if names.size == 1
    "#{names[0]}"
  elsif names.size == 2
    "#{names[0]} & #{names[1]}"
  else
    build_str(names)
  end
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'
p list([{name: 'Bart'}]) == 'Bart'