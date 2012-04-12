$:.unshift File.dirname(__FILE__)
require 'test_helper'

class MovieDBTest < Test::Unit::TestCase
  def test_api_key_present
    assert_not_nil MovieDB::API_KEY, 'MovieDB::API_KEY is nil be sure to export TMDB_API_KEY'
  end
end