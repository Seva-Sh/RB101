# Write a method that takes a floating point number that represents an angle 0 -> 360 degrees
# Returns a string that represents that angle in degrees, minutes and seconds
# Symbol for degrees a single quote for minutes double quote for seconds
# A degree has 60 minutes, minute has 60 seconds

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  loop do
    break if degrees_float >= 0 && degrees_float <=360
    degrees_float -= 360 if degrees_float > 360
    degrees_float += 360 if degrees_float < 0
  end
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# def dms(float)
#   degree = float.divmod(1)[0]
#   min_calc = float.divmod(1)[1] * 60
#   minute = min_calc.divmod(1)[0]
#   sec_calc = min_calc.divmod(1)[1] * 60
#   second = sec_calc.divmod(1)[0]
#   %(#{degree}#{DEGREE}#{format('%02d', minute)}'#{format('%02d', second)}")
# end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
