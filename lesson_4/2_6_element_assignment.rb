str = "joe's favorite color is blue"
str[0] = 'J'
str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'
p str # => "Joe's favorite color is blue"


arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1
p arr         # => [2, 2, 3, 4, 5]


hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'
p hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
