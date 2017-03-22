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


# The first assumption that I'm making is that the dictionary is an array. If it is not, I would first need to convert it into an array for this code to work.

# Saving nouns, verbs, and articles as constants because they will not change in the Annkissam language.
NOUNS = ["abcd", "c", "def", "h", "ij", "cde"]
ARTICLES = ["a", "ac", "e"]
VERBS = ["bc", "fg", "g", "hij", "bcd"]

# Create a dictionary with all of the words in the Annkissam language
DICTIONARY = NOUNS + VERBS + ARTICLES

class Annkissam
  # Create an array of all possible sentences
  def sentences(string, dictionary)
    return $process[string] if $process && $process[string]
    n = string.length
    result = []
    result << string if dictionary.include? string
    1.upto(n-1) do |i|
      string_part = string[i..-1]
      if dictionary.include?(string_part)
        new_result = sentences(string[0..i-1], dictionary).map { |t| t + " " + string_part }
        result += new_result
      end
    end
    $process[string] = result
    result
  end

  # Check to see if the sentence meets the necessary conditions
  def valid_sentence(string, dictionary)
    #Create a global variable to be able to access throughout
    $process = {}
    final_sentences = []
    sentences(string, dictionary).each do |array|
      set = array.split(" ")
      if dictionary_words?(set) && verb_present?(set) && noun_articles_present?(set)
        final_sentences << array
      end
    end
    final_sentences.sort!
  end

  private
  # Checks to see if all words are in the Annkissam dictionary
  def dictionary_words? set
    (set & DICTIONARY) == set
  end

  # Checks to see if there is at least one noun or two articles in the sentence
  def noun_articles_present? set
    ((set & NOUNS).count >= 1) || ((set & ARTICLES).count >= 2)
  end

  # Checks to see if there is at least one verb in the sentence
  def verb_present? set
    (set & VERBS).count >= 1
  end
end
