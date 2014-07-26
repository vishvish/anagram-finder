require_relative './test_helper'
require_relative '../anagram'

describe Anagram do
  let(:anagram) { Anagram.instance }

  describe 'Finding anagrams' do
    it 'should find a single anagram of "act"' do
      (anagram.find_anagrams('act')).must_include('atc')
      (anagram.find_anagrams('act')).wont_include('act')
    end

    it 'should find words from the words list that contain all letters' do
      anagram.find_anagrams('crepitus').must_equal(%w(cuprites pictures piecrust))
      anagram.find_anagrams('paste').must_equal(%w(pates peats septa spate tapes tepas))
      anagram.find_anagrams('boaster').must_equal(%w(barotse boaters borates rebatos sorbate))
    end
  end
end
