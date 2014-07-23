require 'sinatra'
require './anagram'
require 'pry'

class AnagramServer < Sinatra::Base  
  get '/' do
    'Welcome!'
  end
end
