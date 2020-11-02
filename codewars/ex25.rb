=begin 

Problem:
- Method takes the recipe (object) and available ingredients
- Returns maximum number of cakes can bake 
- Ingredients not presetn can be considered 0

Input: 
Output: 

Algorithm:
- Iterate over each key/value pair in recipe hash
  make sure value of ingr for that key is greater than recipe value
  divide ingr value by recipe value, get the amount of cakes and assign it
  to a local variable count
- Upon each iteration check if new count is less than the one we have
  if yes , reassign it to a new smaller value 
- Any time ingr does not have enough value return 0 imediately
    if you hit nil, same

=end

def cakes(recipe, ingr)
  counts = []
  recipe.each do |key, value|
    if ingr[key] == nil || ingr[key] < recipe[key]
      return 0
    elsif ingr[key] >= recipe[key]
      counts << (ingr[key] / recipe[key])
    end
  end
  counts.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0


p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0


p cakes({"eggs"=>4, "flour"=>400},{}) == 0


p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) #== 1
