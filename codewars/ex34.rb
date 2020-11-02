=begin 

Problem:
- Allowed items are defined by array of numbers
- Pockets are providing names and what each one carries
- arr shows items (nums) that are allowed to carry
- 
- 

Input: hash, array
Output: array or nil

Algorithm:
- Iterate over each key/value pair 
  check if each item within value array is included in the allowed_items
    if not, include that key in the answer_arr
- 
- 

=end

pockets = { 
  bob: nil,
  tom: [],
  jane: []
} 

def find_suspects(pockets, allowed_items)
  empty_check = pockets.values#.delete(nil).delete([])
  if empty_check.include?(nil)
    empty_check.delete(nil)
  end
  if empty_check.include?([])
    empty_check.delete([])
  end
  return nil if empty_check.empty? 
  
  names = []

  if allowed_items.empty?
    pockets.each do |key, value|
      names << key if value != nil && value != []
    end

    return names
  end
  
  pockets.each do |name, items|
    items.each do |item|
      names << name if !allowed_items.include?(item)
    end
  end
  names.empty? ? nil : names.uniq
end

p find_suspects(pockets, [1, 2]) # => [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2]) # => nil
# p find_suspects(pockets, []) # => [:bob, :tom, :jane]
# p find_suspects(pockets, [7]) # => [:bob, :tom]