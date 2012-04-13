module MovieDB

  require 'multi_json'
  require 'rubygems'

  
  $:.unshift(File.dirname(__FILE__))
  require 'moviedb/version'
  require 'moviedb/moviedb'
  require 'moviedb/configuration'
  require 'moviedb/search'

end