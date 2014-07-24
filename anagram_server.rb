require 'sinatra'
require './anagram'
require 'pry'
require 'json'

class AnagramServer < Sinatra::Base
  def find_anagram(word)
    result = Anagram.instance.find_anagrams(word)
    { word.to_sym => result }.to_json
  end

  get '/' do
    'Welcome!'
  end

  get '/:word' do
    content_type :json
    input = params[:word].split(',')
    output = input.map { |i| JSON.parse(find_anagram(i)) }.reduce({}, :merge)
    output.to_json
  end

end
