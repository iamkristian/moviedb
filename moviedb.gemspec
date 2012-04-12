# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'moviedb/version'

Gem::Specification.new do |s|
  s.name        = "moviedb"
  s.version     = MovieDB::GEM_VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kristian Rasmussen"]
  s.email       = "info@iamkristian.com"
  s.homepage    = "http://github.com/iamkristian/moviedb"
  s.summary     = "Ruby gem for themoviedb.org <http://themoviedb.org>"
  s.description = "Ruby gem for themoviedb.org <http://themoviedb.org>"
  s.rubyforge_project = "moviedb"
  s.add_dependency "multi_json"
  s.files        = Dir.glob("bin/**/*") + Dir.glob("lib/**/*") + %w(LICENSE README.markdown Rakefile)
  s.require_path = "lib"
end