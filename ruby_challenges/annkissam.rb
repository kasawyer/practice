# Imagine you have recently written a new language for Annkissam and collected all words into the Annkissam Dictionary. Similar to the English language, words can be categorized into nouns, verbs and articles. Below is the Annkissam Dictionary:
#
# Nouns: "abcd", "c", "def", "h", "ij", "cde"
# Verbs: "bc", "fg", "g", "hij", "bcd"
# Articles: "a", "ac", "e"
#
# However, the rules for creating a sentence in the Annkissam Language are very different. A valid sentence in the Annkissam Language should
# - have all its words present in the Annkissam Dictionary.
# - have a verb.
# - have a noun or have at least two articles.
#
# Your task is to write a sentence composer which will take a string as an input and return all possible valid sentences. This composer keeps the characters of the string in the same order, while inserting at most one space between characters as necessary, to create valid words and a valid sentence.
#
# For your convenience, we have provided some sample inputs and outputs.
# Input = "abcdefg", should return the following list:
# [
# "a bc def g",
# "a bcd e fg",
# "abcd e fg"
# ]
#
# Input = "abcc", should return the following list:
# ["a bc c"]
#
# Input = "abcd", should return the following list:
# []

NOUNS = ["abcd", "c", "def", "h", "ij", "cde"]
VERBS = ["bc", "fg", "g", "hij", "bcd"]
ARTICLES = ["a", "ac", "e"]

DICTIONARY = NOUNS + VERBS + ARTICLES

def valid_sentence(string)
  string.split(" ").each do |word|
    if !DICTIONARY.include?(word)
      return []
    else
      return [] << string
    end
  end
end

string = "a bc"
puts valid_sentence(string)
