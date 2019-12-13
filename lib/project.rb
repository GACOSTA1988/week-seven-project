class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
  end
  
  def anagram_checker
    if @input_word_1.casecmp(@input_word_2) == 0
      message = "These words are anagrams"
    else
      messege = "These words are not anagrams"
    end
  end
end