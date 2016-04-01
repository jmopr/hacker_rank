# Given a time in AM/PM format, convert it to military (24-hour) time.
def time_converter(time)
  array_time = time.chars
  time_split = time.split(":")
  meridian = array_time.slice(-2, 2)[0]
  array_time.slice!(-2, 2)

  if time_split[0] == "12"
    if meridian == "A"
      time_split[0] = "00"
      time_split = time_split.join(":").chars
      time_split.slice!(-2, 2)
      time = time_split.join
    else
      time = array_time.join
    end
  elsif meridian == "P"
    hour = (time.split(":")[0].to_i + 12).to_s
    array_time = array_time.join.split(":")
    array_time[0] = hour
    time = array_time.join(":")
  else
    time = array_time.join
  end
  return time
end

puts time_converter("07:05:45PM")
puts time_converter("12:05:39AM")
puts time_converter("12:23:00PM")
puts time_converter("05:00:00AM")
