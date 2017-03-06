require 'pry'



# Trolls are attacking your comment section!
#
# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
#
# Your task is to write a function that takes a string and return a new string with all vowels removed.
#
# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

#first solution
def disemvowel(str)
  array = str.chars
  array.each_with_index do |char, i|
    if "aeiouAEIOU".include?(char)
      array[i] =  nil
    end
  end

  new_string = array.join
  return new_string
end

#more elegant solution
def disemvowel(str)
  str.delete('aeiouAEIOU')
end


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

# month == 12

# Starting with x == 1 and y == 2 write code so that x == 2 and y == 1 without using a temporary variable.
x = 1
y = 2

y = y - x
x = 2 * y

puts x
puts y
