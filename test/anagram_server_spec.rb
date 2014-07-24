require_relative './test_helper'
require_relative '../anagram_server'

describe AnagramServer do
  include Rack::Test::Methods

  def app
    AnagramServer
  end

  it 'welcomes you' do
    get '/'
    assert last_response.ok?
    assert_equal "Welcome!", last_response.body
  end

  it 'finds anagrams of a single word' do
    get '/crepitus'
    assert last_response.ok?
    assert_equal '{"crepitus":["cuprites","pictures","piecrust"]}', last_response.body
  end

  it 'finds anagrams of multiple words in a batch' do
    get '/crepitus,paste,kinship'
    assert last_response.ok?
    assert_equal '{"crepitus":["cuprites","pictures","piecrust"],"paste":["pates","peats","septa","spate","tapes","tepas"],"kinship":["pinkish"]}',
     last_response.body
  end

  it 'returns an empty array if no anagrams are available' do
    get '/sdfwehrtgegfg'
    assert last_response.ok?
    assert_equal '{"sdfwehrtgegfg":[]}', last_response.body
  end


end
