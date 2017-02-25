require 'pry'

# Count the number of Duplicates
#
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphanumeric characters, including digits, uppercase and lowercase alphabets.
#
# Example
#
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabbcdeB" -> 2 # 'a' and 'b'
# "indivisibility" -> 1 # 'i'
# "Indivisibilities" -> 2 # 'i' and 's'
# "aa11" -> 2 # 'a' and '1'

#first pass at a solution
def duplicate_count(text)
  if text != ""
    array = text.split("")
    counts = Hash.new(0)
    hash = array.map!(&:downcase).each { |item| counts[item] += 1 }
    dup_count = 0
    counts.each do |letter, count|
      if count > 1
        dup_count += 1
      end
    end
    return dup_count
  else
    return 0
  end
end

#more elegant solution
def duplicate_count(text)
  arr = text.downcase.split("")
  arr.uniq.count { |n| arr.count(n) > 1 }
end


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

# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contains any char.

def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
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
