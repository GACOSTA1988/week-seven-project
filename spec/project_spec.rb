require ('rspec')
require ('project.rb')
require 'pry'

describe('Anagramer#anagram_checker') do
  anagram_checker_test1 = Anagramer.new("rock","rock")
  it('should test to see if the words are anagrams') do
    expect(anagram_checker_test1.anagram_checker).to(eq("These words are anagrams"))
  end
end

describe('Anagramer#anagram_checker') do
  anagram_checker_test2 = Anagramer.new("rock","Rock")
  it('account for the possibility that words might have different cases but should still be anagrams') do
    expect(anagram_checker_test1.anagram_checker).to(eq("These words are anagrams"))
  end
end
