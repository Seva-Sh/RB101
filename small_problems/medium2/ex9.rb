=begin 

Problem:
- Write a method that takes an array as an argument and sorts that array
  using the bubble sort algo
  Make multiple iterations through the array, on each pass each pair of
  consecutive elements is compared. Swap when needed
  Only exit the iteration once there are no swaps during iteration
- We mutate the array passed as an argument (it contains at least 2 elem)
- 

Input: arr
Output: arr

Algorithm:
- Initialize a local var count to count number of swap during each iteration
- call a loop method with a do..end block, within it we will perform the 
  needed iterations and only exit once no swaps occur
- Using indexes go from 0 upto arr.size - 2
  compare the current element to the next and swap if needed (count each swap)

=end

def bubble_sort!(arr)
  count = 0
  loop do
    count = 0
    0.upto(arr.size - 2) do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        count += 1
      end
    end
    break if count == 0
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)