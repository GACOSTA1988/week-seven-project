class Anagramer

  attr_accessor(:input_word_1, :input_word_2)

  def initialize(input_word_1, input_word_2)
    @input_word_1 = sanitize_word(input_word_1)
    @input_word_2 = sanitize_word(input_word_2)

    @inputs = [@input_word_1, @input_word_2]
  end

  # THIS WILL STRIP PUNCTUATION AND SPACES
  def sanitize_word(word)
    word.upcase.gsub(/[^\w\s\d]/, '')
  end
  
  # THIS WILL RETURN TRUE IF WORD HAS VOWELS
  def are_both_words 
    are_words = @inputs.select { |input| input.match(/[AEIOU]/) }
    
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

  # THIS WILL CHECK IF WORDS HAVE MATCHING LETTERS
  def antigram_checker(word_1, word_2)
    word_1.select { |letter| word_2.include?(letter) }       
  end
  # THIS WILL CHECK INPUT WORDS ARE ANAGRAMS
  def anagram_checker
    word_1_split = @input_word_1.split('').sort
    word_2_split = @input_word_2.split('').sort
    shared_letters = antigram_checker(word_1_split, word_2_split)

    if shared_letters.length == 0 
      return "These are antigrams"
    end

    if word_1_split == word_2_split
      return "These words are anagrams"
    end

    return "These words are not anagrams"
  end
end
