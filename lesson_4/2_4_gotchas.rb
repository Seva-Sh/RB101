# Out of Bounds Indices

arr.fetch(3)

# Negative Indices

str = 'abcde'
arr = ['a', 'b', 'c', 'd', 'e']

str[-2] # => "d"
arr[-2] # => "d

str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

p str[-6] => nil
p arr.fetch[-6] => nil

# Invalid Hash Keys

hsh = { :a => 1, 'b' => 'two', :c => nil }

hsh['b']       # => "two"
hsh[:c]        # => nil
hsh['c']       # => nil
hsh[:d]        # => nil

hsh.fetch(:c)  # => nil
hsh.fetch('c') # => KeyError: key not found: "c"
               #        from (irb):2:in `fetch'
               #        from (irb):2
               #        from /usr/bin/irb:11:in `<main>'
hsh.fetch(:d)  # => KeyError: key not found: :d
               #        from (irb):3:in `fetch'
               #        from (irb):3
               #        from /usr/bin/irb:11:in `<main>'
