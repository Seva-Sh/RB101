2 <=> 1 # => 1
1 <=> 2 # => -1
2 <=> 2 # => 0
'b' <=> 'a' # => 1
'a' <=> 'b' # => -1
'b' <=> 'b' # => 0
1 <=> 'a' # => nil


['a', 1].sort # => ArgumentError: comparison of String with 1 failed

ASCII
'b'.ord # => 98
'}'.ord # => 125
