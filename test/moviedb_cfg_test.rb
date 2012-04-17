require 'test_helper'

class MovieDB::ConfigurationTest < Test::Unit::TestCase

  context "MovieDB::Configuration" do
    setup do
      response = '{"images":{"base_url":"http://cf2.imgobject.com/t/p/","poster_sizes":["w92","w154","w185","w342","w500","original"],"backdrop_sizes":["w300","w780","w1280","original"],"profile_sizes":["w45","w185","h632","original"],"logo_sizes":["w45","w92","w154","w185","w300","w500","original"]}}'
      stub_request(:get, "#{MovieDB.base_url}configuration?api_key=#{MovieDB.api_key}").
        with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
        to_return(:status => 200, :body => response, :headers => {})
      @movieDbCfg = MovieDB::Configuration.new
    end

    should "make sure configuration is not nil" do
      assert_not_nil @movieDbCfg
    end

    should "make sure image configuration isn't nil" do
      puts @movieDbCfg.images
       assert_not_nil @movieDbCfg.images
    end

    should "make sure backdrop configuration isn't nil" do
       assert_not_nil @movieDbCfg.backdrops
    end

    should "make sure poster configuration isn't nil" do
       assert_not_nil @movieDbCfg.posters
    end

    should "make sure logo configuration isn't nil" do
       assert_not_nil @movieDbCfg.logos
    end
  end

end