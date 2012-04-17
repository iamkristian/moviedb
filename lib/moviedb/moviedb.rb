module MovieDB

  class << self
      attr_accessor :api_key, :base_url
  end

  self.api_key = nil
  self.base_url = 'http://api.themoviedb.org/3/'

  def self.api_key
    @api_key || ENV['MOVIEDB_API_KEY']
  end
  
  def self.base_url
    @base_url
  end
  
  
end