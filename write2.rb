=begin
a = 'hello'
b = a
a = 'bye'

on line 1 we initialize local variable a and we are assigning string object
with a value hello to the local variable a. now local variable a is referencing
string object with a value hello
on line 2 we are initializing local variable b and we are assigning to it a
string object that th elocal variable a is referencing to. currently both local
variables are pointing to the same object
on line 3 we are reassigning loca variable a to a different string object with a
value 'bye'


def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

On lines 1-8 we are defining the method example which takes 1 parameter.
On line 10 we are calling the mehtod example and passing in string object 'hello'
as an argument to it
Methods are defined with parameters, but are called with arguments
On line 2 of this code we are initializing a local variable i and assigning an
integer object with a value 3 to it.
On line 3 we are calling the method loop and passing in the do..end block as an argument
The block is passed to a method call as an argument
On line 4 we are calling the method puts and passing in local variable str as an argument
to it.
On line 5 the local variable i is reassigned. i -= 1 is a asyntactical sugar for
i = i - 1, additionally that is a syntactical sugar for i = i.-(1).
So basically we are reassigning local variable i to a return value of a method call
Integer#- on a local variable i with integer 1 passed to it as an argument
On line 6 we are breaking out of a loop by using keyword break if the value of the object that
local varibale i is referencing is equal to 0.
This code outputs string hello 3 times and returns nil


a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b

on line 1 local variable a is initialized and is assigned to the integer object with a value 4
variable a
on line 3 we call method loop and pass do..end block to it as an argument
within the do..end block, on line 4 local variable a is reassigned to an integer object 5
  on line 5 local variable b is initialized assigned to an integer object 3
  on line 6 we break out of the loop using keyword break
we are invoking the method puts and passing to it local variable a as an argument
it will print local variable in s string object form (before internally it will call to_s method)
and return nill
we are invoking the method puts and passing to it local variable b as an argument
Due to the fact that local variable b was initialized in a do..end block the mehtod puts is not
able to access it and we get an error
Result - the code outputs 5 and raises an error, undefined local variable or method b
An inner scope is defined by the do..end block and the outer scope includes everything else
Local variables that are initialized in an inner scope cannot be accessed in the outer scope
but local variables that are initialized in the outer scope can be accessed in the inner scope


a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b

on line 1 we are initializing local variable a and assigning it to an integer object 4
on line 4 we are calling the loop method and passign do..end block to it as an argument
inside of this block: we initialize a new lcoal variable c which has this block as its scope
on line 6 we reassign local variable a to the same integer object that local variable c is referencing
on line 10 we call method puts a pass the local variable a as an argument to it, htis code outputs the value of
the variable a which is 3 now since we reassigned it inside of the block
line 12 raises an error since local variable c is not accessible within its outer scope


a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

On line 1 local variable a is initialized and assigned to an integer object with a value 4
on line 2 local variable b is initialized and assigned to an integer object 2
on line 4 we are invoking a method times on an integer 2 and passing a
do..end block as an argument with a parameter a (this is an example of variable shadowing)
this happens when parameter name of the block is the same as the local variable which was
initialized outside of the block. this prevents access to the local variable a
on line 5 we are assigning the local variable a (passed in as a parameter of the do..end block)
to an integer object 5
on line 6 we are invoking method puts and passing local variable a as argument
it prints 5 two times and returns nil


[1, 2, 3, 4].each { |num| puts num }

It iterates through the array object passing each element of the array to the block,
runs the block and when finishes every iteration it returns the original array.


[1, 2, 3, 4].map { |num| puts num }









=end
