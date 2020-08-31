# Write two methods that take time of day in 24 hrs
#
# returb the number of minutes before and after midnight
# Split time into an array with two values
# Multiply hours by minutes and add with minutes
# Result will be after midnight, and 1440- number is before midnight
require 'time'


def after_midnight(time)
  array = time.split(":")
  time_in_minutes = (array[0].to_i * 60) + array[1].to_i
  if time_in_minutes < 1440
    time_in_minutes
  else
    1440 - time_in_minutes
  end
end

def before_midnight(time)
  array = time.split(":")
  time_in_minutes = 1440 - ((array[0].to_i * 60) + array[1].to_i)
  if time_in_minutes < 1440
    time_in_minutes
  else
    1440 - time_in_minutes
  end
end

p after_midnight('00:00')
p before_midnight('00:00')
p after_midnight('12:34')
p before_midnight('12:34')
p after_midnight('24:00')
p before_midnight('24:00')
t = Time.parse("12:34")
p t.hour * 60 + t.min
