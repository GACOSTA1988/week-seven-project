class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1.upcase
    @input_word_2 = input_word_2.upcase
    @inputs = [@input_word_1, @input_word_2]
  end

  
  # THIS WILL RETURN TRUE IF WORD HAS VOWELS
def are_both_words 
  are_words = @inputs.select {|input| input.match(/[AEIOU]/) }
  
  if are_words.length == 2
   return "both are words"
  end

  if are_words.length == 1
    return "only one word is valid"
  end

  if are_words.length == 0
   return "neither of these are words"
  end
end

  def anagram_checker
    word_1_split = @input_word_1.upcase.split('').sort_by {|word_1_split| word_1_split }
    word_1_vowels = @input_word_1.scan(/\w[AEIOUaeiou]/) 

    word_2_split = @input_word_2.upcase.split('').sort_by {|word_2_split| word_2_split } 
    word_2_vowels = @input_word_2.scan(/\w[AEIOUaeiou]/) 

    puts word_1_vowels.length == 0 
    puts word_2_vowels.length == 0 
    # word_2_vowels.length == 0
    # binding.pry
    if word_1_vowels.length == 0 
    message = "Sorry but all entry words must contain a vowel, please try again"
    
    elsif word_2_vowels.length == 0 
    message = "Sorry but all entry words must contain a vowel, please try again"
    
    elsif word_1_split == word_2_split
      message = "These words are anagrams"

    else
      message = "These words are not anagrams"
    end
    message
  end
end

def is_antigram(array1, array2)
  array1.each do |letter|
    return true if array2.includes?(letter)

    return false
  end
end