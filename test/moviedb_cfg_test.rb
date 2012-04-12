$:.unshift File.dirname(__FILE__)
require 'test_helper'

class MovieDBConfigurationTest < Test::Unit::TestCase

  def setup
    @movieDbCfg = MovieDB::Configuration.new
  end

  def test_configuration
    assert_not_nil @movieDbCfg
  end

  def test_images_not_nil
    assert_not_nil @movieDbCfg.images, 'Configuration not loaded for images'
  end

  def test_backdrops_not_nil
    assert_not_nil @movieDbCfg.backdrops, 'Configuration not loaded for backdrops'
  end

  def test_posters_not_nil
    assert_not_nil @movieDbCfg.posters, 'Configuration not loaded for posters'
    end

  def test_logos_not_nil
    assert_not_nil @movieDbCfg.logos, 'Configuration not loaded for logos'
  end

end