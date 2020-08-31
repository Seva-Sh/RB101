def sel(array)
  array.select do |num|
    num + 1
    puts num
  end
end

p sel([1, 2, 3])
