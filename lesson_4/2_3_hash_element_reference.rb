# hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

# hsh['fruit'] => 'apple'
# hsh['fruit'][0] => 'a'

# hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
# repeated key gets overwritten by last one!

country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
country_capitals.keys => [:uk, :france, :germany]
country_capitals.values => ["London", "Paris", "Berlin"]
country_capitals.values[0] => 'London'
