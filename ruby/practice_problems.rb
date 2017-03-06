require 'pry'


# You live in the city of Cartesia where all roads are laid out in a perfect grid. You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk. The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). You know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

#first solution
def isValidWalk(walk)
  if walk.length == 10 && walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w')
    return true
  else
    return false
  end
end

#refactored solution
def isValidWalk(walk)
  walk.length == 10 && walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w')
end


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

# Well met with Fibonacci bigger brother, AKA Tribonacci.
#
# As the name may already reveal, it works basically like a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence to generate the next. And, worse part of it, regrettably I won't get to hear non-native Italian speakers trying to pronounce it :(
#
# So, if we are to start our Tribonacci sequence with [1,1,1] as a starting input (AKA signature), we have this sequence:
#
# [1,1,1,3,5,9,17,31,...]
# But what if we started with [0,0,1] as a signature? As starting with [0,1] instead of [1,1] basically shifts the common Fibonacci sequence by once place, you may be tempted to think that we would get the same sequence shifted by 2 places, but that is not the case and we would get:
#
# [0,0,1,1,2,4,7,13,24,...]
# Well, you may have guessed it by now, but to be clear: you need to create a fibonacci function that given a signature array/list, returns the first n elements - signature included of the so seeded sequence.
#
# Signature will always contain 3 numbers; n will always be a non-negative number; if n==0, then return an empty array and be ready for anything else which is not clearly specified ;)
#
# If you enjoyed this kata more advanced and generalized version of it can be found in the Xbonacci kata

def tribonacci(signature,n)
  for i in 3..n
    signature[i] = signature[i-1] + signature[i-2] + signature[i-3]
  end
  return signature.slice(0, n)
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