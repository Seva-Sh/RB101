# Write a method that takes a time using minute based format
#
# Returns a time of day in 24 hour format (hh:mm)
# For positive: divide number by 60 to calculate hours and
# minus those hours to calculate left minutes. Add to hours slot and minutes slot (00:00)
# For negative: calculate hours and minutes same way
# Dedact from 24:00

TODAY = Time.new(2020, 8, 23)
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
SECONDS_PER_DAY  = 86400

def time_of_day(delta_minutes)
  delta_secs = delta_minutes * 60
  time = TODAY + delta_secs
  time.strftime("%A %H:%M")
end

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# def get_hours_and_mins(minutes)
#   hours = minutes / 60
#   mins = minutes - (hours * 60)
#   loop do
#     if hours > 24
#       hours -= 24
#     else break
#     end
#   end
#   return hours, mins
# end
#
# def edit_time(time, hours, mins, total_mins)
#   if total_mins.positive?
#     time[0] += hours
#     time[1] += mins
#   elsif total_mins.negative?
#     if mins == 0
#       time[0] = 24 - hours
#     else
#       time[0] = 23 - hours
#       time[1] = 60 - mins
#     end
#   end
# end
#
# def time_of_day(minutes)
#   time = [0, 0]
#   hours, mins = get_hours_and_mins(minutes.abs)
#   edit_time(time, hours, mins, minutes)
#   return "%02d" % time[0] + ':' + "%02d" % time[1]
# end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
