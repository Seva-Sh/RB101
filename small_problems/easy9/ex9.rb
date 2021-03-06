=begin

Write a method determines the average of the three scores passed to it
Returns the letter value associated with that grade

=end

def get_grade(gr1, gr2, gr3)
  average = (gr1 + gr2 + gr3) / 3
  case 
  when average >= 90 && average <= 100
    return 'A'
  when average >= 80 && average < 90
    return 'B'
  when average >= 70 && average < 80
    return 'c'
  when average >= 60 && average < 70
    return 'D'
  else
    return 'F'
  end
end

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3) / 3

  case result
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"