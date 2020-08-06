# Print all odd numbers from 1 to 99 inclusive. All on separate lines

(1..99).select do |num|
  puts num if num.odd?
end

# Further Exploration

1.upto(99) { |num| puts num if num.odd? }
