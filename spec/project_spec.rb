require ('rspec')
require ('project.rb')
require 'pry'

# describe('Anagramer#anagram_checker') do
#   anagram_checker_test1 = Anagramer.new("rock","rock")
#   it('should test to see if the words are anagrams') do
#     expect(anagram_checker_test1.anagram_checker).to(eq("These words are anagrams"))
#   end
# end

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

describe('Anagramer#anagram_checker') do
  anagram_checker_test4 = Anagramer.new("kkkaak","kkk")
  it('should test to see if the inputed words contain a vowel') do
    expect(anagram_checker_test4.anagram_checker).to(eq("Sorry but all entry words must contain a vowel, please try again"))
  end
end