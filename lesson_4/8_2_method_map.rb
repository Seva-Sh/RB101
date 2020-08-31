def map(array)
  array.map do |num|
    num.odd?
    puts num # [nil, nil, nil]
  end
end

p map([1, 2, 3])
