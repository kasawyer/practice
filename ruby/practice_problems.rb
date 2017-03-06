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
