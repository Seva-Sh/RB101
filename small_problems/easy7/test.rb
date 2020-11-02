def append(s)
  s << '*'
end

str ='abc'
new_str = append(str)

p str.object_id
p new_str.object_id
