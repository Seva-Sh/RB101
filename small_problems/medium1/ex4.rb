=begin 

Problem:
- 
- 
- 
- 
- 

Input: 
Output: 

Algorithm:
- Initially all lights on, therefore we can construct an array including all 
- the lights in it
- Number of rounds are equal to n 
- Starting from the second round to n round, we will be changing light presence
- in the array, incrementing starting num by 1,
    if round is an even num, then even nums starting from that num will 
    change their, if odd num, then all odd nums

=end

def switch(n)
  lights = (1..n).to_a
  2.upto(n) do |round|
    round.upto(n) do |num|
      if round.even? && num % round == 0
        lights.include?(num) ? lights.delete(num) : lights.push(num)
      elsif round.odd? && num % round == 0 
        lights.include?(num) ? lights.delete(num) : lights.push(num)
      end
    end
  end
  lights.sort
end

def lights(number)
  answer = []
  1.upto(number) do |round|
    switch = round
    loop do
      break if switch > number
      if answer.include?(switch) 
        answer.delete(switch)
      else 
        answer.push(switch)
      end
      switch += round
    end
  end
  answer
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]

p switch(5)
p switch(10)