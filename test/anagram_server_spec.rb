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
  
end