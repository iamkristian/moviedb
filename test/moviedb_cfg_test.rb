#$:.unshift File.dirname(__FILE__)
require 'test_helper'

class MovieDB::ConfigurationTest < Test::Unit::TestCase

  context "MovieDB::Configuration" do
    setup do
      @movieDbCfg = MovieDB::Configuration.new
    end

    should "make sure configuration is not nil" do
      assert_not_nil @movieDbCfg
    end

    should "make sure image configuration isn't nil" do
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