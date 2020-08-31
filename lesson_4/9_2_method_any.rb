[1, 2, 3].any? do |num|
  num > 2
end
# => true

{ a: 'ant', b: 'bear', c: 'cat' }.any? do |key, value|
  value.size > 4
end
# => false
