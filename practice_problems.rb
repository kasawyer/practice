require 'pry'

# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters, - each taken only once - coming from s1 or s2.
def longest(a1, a2)
  (a1 + a2).chars.sort.uniq.join
end

# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

def iq_test(numbers)
  numbers_array = []
  evens_array = []
  odds_array = []
  numbers.split(" ").each do |num|
    num = num.to_i
    numbers_array << num
    if (num % 2 != 0)
      odds_array << num
    else
      evens_array << num
    end
  end
  if odds_array.count == 1
    return (numbers_array.index(odds_array[0]) + 1)
  elsif evens_array.count == 1
    return (numbers_array.index(evens_array[0]) + 1)
  end
end


# Write a method that reverses the order of words in the following string:

dwarves = "bashful doc dopey grumpy happy sleepy sneezy"

dwarves = dwarves.split(' ').reverse().join(' ')
puts dwarves


# Improve this code snippet:
# if (month == 12)
#   true
# else
#   false
# end

# if (month == 12)
# end

# Starting with x == 1 and y == 2 write code so that x == 2 and y == 1 without using a temporary variable.
x = 1
y = 2

y = y - x
x = 2 * y

puts x
puts y
