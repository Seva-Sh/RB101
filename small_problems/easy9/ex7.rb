=begin

Write a method that takes a first name a space and last name
returns a string that contains last name a comma a space and the first name

=end

def swap_name(str)
  first, last = str.split
  "#{last}, #{first}"
end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
