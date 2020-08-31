[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd # => [1, 3]
even # => [2]

long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]
