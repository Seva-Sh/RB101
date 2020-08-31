1.
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

['hi', 'hi', 'hi'] NO, [1, 2, 3] because all will be truthy

2.
x = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
p x
2

3.
x = [1, 2, 3].reject do |num|
  puts num
end
p x
falsey values not False as per

4.
x = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
p x
{ 'a' => 'ant', 'b' => 'bear', 'c' => 'cat' }

5.
hash = { a: 'ant', b: 'bear' }
p hash.shift
[a:, 'ant']
removes the first key value pair from the hash and returns it as an array

6.
p ['ant', 'bear', 'caterpillar'].pop.size
11

7.
x = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end
p x

8.
arr = [1, 2, 3, 4, 5]
p arr.take(2)
p arr

9.
x = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
p x
[nil, 'bear']

10.
x = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
p x
[1, nil, nil]
