module MovieDB

  require 'multi_json'
  require 'rubygems'

  API_KEY = ENV['TMDB_API_KEY']
  BASE_URI = 'http://api.themoviedb.org/3/'

  $:.unshift(File.dirname(__FILE__))
  require 'moviedb/version'
  require 'moviedb/configuration'

end