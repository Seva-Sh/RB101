[1, 2, 3].all? do |num|
  num > 2
end
# => false

{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
# => true
