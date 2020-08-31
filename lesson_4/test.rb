x = {a: '1', b: '2'}.map do |key, value|
  value.to_i * 2
end
p x
