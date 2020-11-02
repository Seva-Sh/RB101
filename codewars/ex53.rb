=begin 

Problem:
- Float parameter 'h' in meters must be greater than 0
- Float param 'bounce' must be greater htan 0 and less than 1
- Float parameter 'window' must be less than h
- Height of the rebounding ball is greater than the window param
- 

Input: 
Output: 

Algorithm:
- Each time ball bounce upto 0.66 of the original height, to calculate it
- h * bounce , that will be the new h
- we need to keep iterating until the moment when window param becomes higher
  than h

=end

def bouncingBall(h, bounce, window)
  return -1 if h < 0 || bounce <= 0 || bounce >= 1 || window >= h 

  count = 1
  loop do
    count += 2 if h * bounce > window 
    break if window > h 
    h = h * bounce 
  end
  count
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
