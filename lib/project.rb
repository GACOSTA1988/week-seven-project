class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
  end

  def anagram_checker
    word_1_split = @input_word_1.upcase.split('').sort_by {|word_1_split| word_1_split }

    word_2_split = @input_word_2.upcase.split('').sort_by {|word_2_split| word_2_split } 

    puts @input_word_1.scan(/\w[AEIOUaeiou]/)
    # messege = "Sorry but all entry words must contain a vowel, please try again"

    if word_1_split == word_2_split
      message = "These words are anagrams"
    else
      messege = "These words are not anagrams"
    end
   
  end
end