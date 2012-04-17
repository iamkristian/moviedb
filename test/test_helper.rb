#require 'test/unit'
$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'moviedb'
require 'shoulda'
require 'webmock'
require 'multi_json'

class Test::Unit::TestCase
  include WebMock::API
end