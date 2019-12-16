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

  it('account for the possibility that words might have different cases but should still be anagrams') do
    is_capital = Anagramer.new("rock","Rock")
    expect(is_capital.anagram_checker).to(eq("These words are anagrams"))
  end  

  it('returns "These are antigrams" if both words are valid') do
    are_antigrams = Anagramer.new("hi","bed")
    expect(are_antigrams.anagram_checker).to(eq("These are antigrams"))
  end
end

describe('Anagramer#are_both_words') do
  it('returns "both are words" if both words are valid') do
    two_real_words = Anagramer.new("cat","bed")
    expect(two_real_words.are_both_words).to(eq("both are words"))
  end

  it('returns  "only one word is valid" if one word are valid') do
    one_real_words = Anagramer.new("ct","bed")
    expect(one_real_words.are_both_words).to(eq( "only one word is valid"))
  end

  it('returns "neither of these are words" if neither words are valid') do
    no_real_words = Anagramer.new("ct","bd")
    expect(no_real_words.are_both_words).to(eq("neither of these are words"))
  end
end
