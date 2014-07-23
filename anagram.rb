## The task

### You need to put together a simple web application that can produce anagrams of words from a wordlist.
#
# * You can find a copy of our wordlist at http://static.abscond.org/wordlist.txt
# * Non-alphanumeric characters should be considered as part of the anagram (e.g. "he's" is not an anagram of "she")
# * The application should be able to respond to a request made every second
# * Assume that the application will be hosted on heroku

class Anagram
  include Singleton
  
  attr_reader :dictosaurus
  
  def initialize
    @dictosaurus = {}
    @filename = 'wordlist.txt'
    words ||= File.readlines(@filename).collect { |line| line.chomp.downcase }
    store(words)
  end

  def find_anagrams(word)
    key = word.chars.sort.join().to_sym
    @dictosaurus[key].uniq.select { |anagram| anagram != word }
  end

  private
  def store(wordlist)
    # ensure we append words with a duplicate sort value
    @dictosaurus = wordlist.each_with_object(Hash.new []) do |word, hsh|
      key = word.chars.sort.join()
      #puts "Adding #{word} to #{key}"
      hsh[key.to_sym] += [word]
      hsh[key.to_sym]
    end
  end
  
end