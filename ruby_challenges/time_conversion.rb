# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
#
# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
#
# Function Description
#
# Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.
#
# timeConversion has the following parameter(s):
#
# s: a string representing time in  hour format
# Input Format
#
# A single string  containing a time in -hour clock format (i.e.:  or ), where  and .
#
# Constraints
#
# All input times are valid
# Output Format
#
# Convert and print the given time in -hour format, where .
#
# Sample Input 0
#
# 07:05:45PM
# Sample Output 0
#
# 19:05:45

#!/bin/ruby

#
# Complete the timeConversion function below.
#
def timeConversion(s)
    am_pm = s[(s.length - 2)..(s.length - 1)]
    s.gsub!(am_pm, '')
    hour = s[0..1]
    if hour == '12'
        if am_pm == 'AM'
            s[0..1] = '00'
        end
    elsif am_pm == 'PM'
        new_hour = (hour.to_i + 12).to_s
        s[0..1] = new_hour
    end
    result = s
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

result = timeConversion s

fp.write result
fp.write "\n"

fp.close()
