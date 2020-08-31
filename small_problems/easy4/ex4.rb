# Same thing but with julian year
# year < 1752 = julian year

def leap_year?(year)
  if year < 1752
    return true if year % 4 == 0
  elsif year % 100 == 0
    return true if year % 400 == 0
  elsif year % 4 == 0
    return true
  end
  false
end

def leap_year2?(year)
  (year < 1752 && year % 4 == 0) ||
  (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0))
end

p leap_year2?(2016) == true
p leap_year2?(2015) == false
p leap_year2?(2100) == false
p leap_year2?(2400) == true
p leap_year2?(240000) == true
p leap_year2?(240001) == false
p leap_year2?(2000) == true
p leap_year2?(1900) == false
p leap_year2?(1752) == true
p leap_year2?(1700) == true
p leap_year2?(1) == false
p leap_year2?(100) == true
p leap_year2?(400) == true
