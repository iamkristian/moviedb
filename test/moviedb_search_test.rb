require 'test_helper'

class MovieDB::SearchTest < Test::Unit::TestCase

  context "MovieDB::Search" do
    setup do
      @movieSearch = MovieDB::Search.new
    end

    should "not accept files with more than one . in them" do
      assert_equal "myfilen-a-m-ewithoddcharsin.it", @movieSearch.filter_file("my.file.n-a-m-e#/with=odd?chars%in*.it")
    end

    should "return filename if no . is found" do
      assert_equal "filename_with_out_a_dotorsomethingother", @movieSearch.filter_file("filename_with_out_a_dot*or=some+thing?other")
    end


  end

end