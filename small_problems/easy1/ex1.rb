=begin

Method takes 2 arguments(string, positive integer)

Print string

=end

def repeat(string, integer)
  while integer != 0 do
    puts string
    integer -= 1
  end
end

repeat('Hello', 3)

# or

def repeat2(string, integer)
  integer.times { puts string }
end

repeat2('Hello', 3)
