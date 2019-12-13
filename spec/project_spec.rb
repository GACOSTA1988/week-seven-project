require('rspec')
require('project.rb')
require 'pry'

describe('') do
  test1 = Anagramer.new("rock","rack")
  it('should test to see if the words are anagrams') do
    expect(test1.game_manager).to(eq("These words are anagrams"))
  end
end

