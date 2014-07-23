require 'sinatra'
require './anagram'
require 'pry'
require 'json'

class AnagramServer < Sinatra::Base  
  get '/' do
    'Welcome!'
  end
  
  get '/:word' do
    content_type :json
    anagram = Anagram.instance
    result = anagram.find_anagrams(params[:word])
    { params[:word].to_sym => result }.to_json
  end
  
end
