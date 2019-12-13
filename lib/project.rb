class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
  end

  def anagram_checker
    word_1_split = @input_word_1.upcase.split('')
    word_2_split = @input_word_2.upcase.split('')

    puts word_1_split

    if word_1_split == word_2_split
      message = "These words are anagrams"
    else
      messege = "These words are not anagrams"
    end
   
  end
end