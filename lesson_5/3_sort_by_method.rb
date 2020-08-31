['cot', 'bed', 'mat'].sort_by do |word|
  word[1]
end
# => ["mat", "bed", "cot"]


people = { Kate: 27, john: 25, Mike:  18 }
people.sort_by do |_, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
