=begin 

Problem:
- Method returns true if every elemetn in an array is an integer or a float
  with no decimal; true also if array is empty
- False for every other input
- 
- 
- 

Input: arr
Output: boolean

Algorithm:
- Iterate over each element in the array 
  check if the num is a float -> if yes, return false if decimal equals anything
  other than 0
  second check is num is not an int, then return false also
- Return true in the end, because this would mean that we checked all the cases
- 

=end

def is_int_array(arr)
  return false if arr.class != Array
  arr.each do |num|
    if num.class == Float
      return false if num.divmod(1)[1] > 0
    elsif num.class != Integer 
      return false
    end
  end
  true
end

p is_int_array([]) == true #"Input: []"
p is_int_array([1, 2, 3, 4]) == true #"Input: [1, 2, 3, 4]"
p is_int_array([-11, -12, -13, -14]) == true #"Input: [-11, -12, -13, -14]"
p is_int_array([1.0, 2.0, 3.0]) == true #"Input: [1.0, 2.0, 3.0]"
p is_int_array([1, 2, nil]) == false #"Input: [1,2, nil]"
p is_int_array(nil) == false #"Input: nil"
p is_int_array("") == false #"Input: ''"
p is_int_array([nil]) == false #"Input: [nil]"
p is_int_array([1.0, 2.0, 3.0001]) == false #"Input: [1.0, 2.0, 3.0001]"
p is_int_array(["-1"]) == false #"Input: ['-1']"
