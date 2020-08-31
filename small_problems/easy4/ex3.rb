# Write a method that takes any year > 0 and returns true if the year is a leap year
#
# leap year is a year that is EVENLY divisible by 4 UNLESS it is also divisible by 100
# If the year us evenly divisible by 100, then it is not a leap year unless the year is
# evenly divisible by 400

def leap_year?(year)
  if year % 100 == 0
    return true if year % 400 == 0
  else
    return true if year % 4 == 0
  end
  return false
end

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

def leap_year2?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
