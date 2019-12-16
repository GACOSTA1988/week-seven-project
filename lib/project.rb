class Anagramer
  def initialize(input_word_1, input_word_2)
    @input_word_1 = sanitize_word(input_word_1)
    @input_word_2 = sanitize_word(input_word_2)

    @inputs = [@input_word_1, @input_word_2]
  end

  def sanitize_word(word)
    word.upcase.gsub(/[^\w\s\d]/, '')
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
    word_1_split = @input_word_1.split('').sort
    word_2_split = @input_word_2.split('').sort

    if word_1_split == word_2_split
      return "These words are anagrams"
    else
      return "These words are not anagrams"
    end
  end
end
