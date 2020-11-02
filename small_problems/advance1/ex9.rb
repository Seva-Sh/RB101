=begin

Create a loop method with a do..end and only 
number_of_swaps == 0
  iterate over each element of the array using upto method
  comparing the one we iterate over and the element next to it
  perform a comparison, if first is greater than the next then swap
  and move on to the next iteration
  if we perform a swap, then increment the value number_of_swaps by 1
break out of the loop if number_of_swaps == 0
=end

def bubble_sort!(arr)
  loop do
    num_of_swaps = 0

    0.upto(arr.size - 2) do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        num_of_swaps += 1
      end
    end

    break if num_of_swaps == 0
  end
end

p array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)