# Print even number from 1 to 99 inclusive. All on separate lines

1.upto(99) { |num| puts num if num.even? }

puts (1..99).select(&:even?)

(1..99).each { |num| puts num if num.even? }
