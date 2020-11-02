=begin

Iterate over each element in the array 


=end


def minSubLength(arr, s)
  sub_arr = []
  0.upto(arr.length - 1) do |idx|
    idx.upto(arr.length - 1) do |idx2|
      sub_arr << arr[idx..idx2]
    end
  end
  sub_arr.select! { |array| array.sum >= s }
  return 0 if sub_arr.empty?
  min_sub_arr = sub_arr[0]
  sub_arr.each do |array|
    if array.size < min_sub_arr.size
      min_sub_arr = array 
    end
  end
  min_sub_arr.size
end

p minSubLength([1, 2, 4], 8) #== 2