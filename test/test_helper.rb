require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/reporters'
require 'pry'
require 'rack/test'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
