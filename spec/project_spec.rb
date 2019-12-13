require('rspec')
require('project.rb')
require 'pry'

describe('') do
  anagram_checker_test1 = Anagramer.new("rock","rack")
  it('should test to see if the words are anagrams') do
    expect(anagram_checker_test1.anagram_checker).to(eq("These words are anagrams"))
  end
end

