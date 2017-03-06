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
