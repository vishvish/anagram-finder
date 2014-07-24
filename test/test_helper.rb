require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/autorun'
require 'minitest/reporters'
require 'pry'
require 'rack/test'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
