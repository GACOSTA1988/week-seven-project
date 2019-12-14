class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
  end

  
  def anagram_checker
    word_1_split = @input_word_1.upcase.split('').sort_by {|word_1_split| word_1_split }
    word_1_vowels = @input_word_1.scan(/\w[AEIOUaeiou]/) 

    word_2_split = @input_word_2.upcase.split('').sort_by {|word_2_split| word_2_split } 
    word_2_vowels = @input_word_2.scan(/\w[AEIOUaeiou]/) 

    puts word_1_vowels.length == 0 
    puts word_2_vowels.length == 0 
    # word_2_vowels.length == 0 
    if word_1_vowels.length == 0 
    message = "Sorry but all entry words must contain a vowel, please try again"
    end
    if word_2_vowels.length == 0 
    message = "Sorry but all entry words must contain a vowel, please try again"
    end
    if word_1_split == word_2_split
      message = "These words are anagrams"
    else
      messege = "These words are not anagrams"
    end
   
  end
end