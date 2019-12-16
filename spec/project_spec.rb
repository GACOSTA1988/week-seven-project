require ('rspec')
require ('project.rb')
require 'pry'

describe('Anagramer#anagram_checker') do
 
  it('should return "These words are anagrams" if words are anagrams') do
    are_anagrams = Anagramer.new("tea","eat")
    expect(are_anagrams.anagram_checker).to(eq("These words are anagrams"))
  end

  it('should return "These words are not anagrams" if words are not anagrams') do
    are_not_anagrams = Anagramer.new("tea","eater")
    expect(are_not_anagrams.anagram_checker).to(eq("These words are not anagrams"))
  end
end

# describe('Anagramer#anagram_checker') do
#   anagram_checker_test2 = Anagramer.new("rock","Rock")
#   it('account for the possibility that words might have different cases but should still be anagrams') do
#     expect(anagram_checker_test2.anagram_checker).to(eq("These words are anagrams"))
#   end
# end

# describe('Anagramer#anagram_checker') do
#   anagram_checker_test3 = Anagramer.new("eat","tea")
#   it('should test to see if the words are anagrams when letters are sorted different ') do
#     expect(anagram_checker_test3.anagram_checker).to(eq("These words are anagrams"))
#   end
# end

# describe('Anagramer#anagram_checker') do
#   anagram_checker_test4 = Anagramer.new("kkakk","kkak")
#   it('should test to see if the inputed words contain a vowel') do
#     expect(anagram_checker_test4.anagram_checker).to(eq("Sorry but all entry words must contain a vowel, please try again"))
#   end

#   it('should test to see if the inputed words contain a vowel') do
#     expect(anagram_checker_test4.anagram_checker).to(eq("Sorry but all entry words must contain a vowel, please try again"))
#   end
# end
describe('Anagramer#are_both_words') do
  it('returns "both are words" if both words are valid') do
    two_real_words = Anagramer.new("cat","bed")
    expect(two_real_words.are_both_words).to(eq("both are words"))
  end

  it('returns  "only one word is valid" if both words are valid') do
    one_real_words = Anagramer.new("ct","bed")
    expect(one_real_words.are_both_words).to(eq( "only one word is valid"))
  end

  it('returns "neither of these are words" if both words are valid') do
    no_real_words = Anagramer.new("ct?????    ","bd")
    expect(no_real_words.are_both_words).to(eq("neither of these are words"))
  end
end