module MovieDB
  class Configuration
    
    
    attr_reader :images, :backdrops, :posters, :logos

    def initialize 
      http = Net::HTTP.get_response('api.themoviedb.org', "/3/configuration?api_key=#{MovieDB.api_key}")
      body = MultiJson.decode(http.body)
      puts '////////'
      puts body
      @images = body['images']
      @backdrops = body[:backdrops]
      @posters = body[:posters]      
      @logos = body[:logos]
      @body      
    end

    def images
      @images
    end

    def backdrops
      @backdrops
    end

    def posters
      @posters
    end

    def logos
      @logos
    end

  end
end