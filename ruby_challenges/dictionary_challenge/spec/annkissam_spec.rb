require_relative "../annkissam"

describe Annkissam do
  describe "new_test.valid_sentence" do
    it "should return an array of all of the valid sentences" do
      result = Annkissam.new.valid_sentence("abcdefg", DICTIONARY)
      expect(result).to eq(["a bc def g", "a bcd e fg", "abcd e fg"])
    end

    it "should return an array of all of the valid sentences" do
      result = Annkissam.new.valid_sentence("abcc", DICTIONARY)
      expect(result).to eq(["a bc c"])
    end

    it "should return an array of all of the valid sentences" do
      result = Annkissam.new.valid_sentence("abcd", DICTIONARY)
      expect(result).to eq([])
    end

    it "should return an array of all of the valid sentences" do
      result = Annkissam.new.valid_sentence("aabcde", DICTIONARY)
      expect(result).to eq([])
    end

    it "should return an array of all of the valid sentences" do
      result = Annkissam.new.valid_sentence("abcdefghij", DICTIONARY)
      expect(result).to eq(["a bc def g h ij", "a bc def g hij", "a bcd e fg h ij", "a bcd e fg hij", "abcd e fg h ij", "abcd e fg hij"])
    end
  end
end
