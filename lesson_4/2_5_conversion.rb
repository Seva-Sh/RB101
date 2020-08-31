str = 'Practice'

arr = str.chars => ["P", "r", "a", "c", "t", "i", "c", "e"]

arr.join # => "Practice"

str = 'How do you get to Carnegie Hall?'
p arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
p arr.join(" ")        # => "HowdoyougettoCarnegieHall?"

hsh = { sky: "blue", grass: "green" }
hsh.to_a # => [[:sky, "blue"], [:grass, "green"]]

arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
p arr.to_h
