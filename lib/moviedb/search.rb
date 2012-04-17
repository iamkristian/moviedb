module MovieDB

  class Search


    def filter_file(file)
      
      idx = file.rindex('.')
      filebase = nil
      extension = nil
      if idx.nil? 
        puts file
        file.gsub(/[^A-Za-z0-9\-_]/, "")
      else
        filebase = file[0..idx] 
        extension = file[idx..file.length] if !idx.nil?
        filebase.gsub!(/[^A-Za-z0-9\-_]/, "")
        extension.gsub!(/[^A-Za-z0-9\-_]/, "")
        "#{filebase}.#{extension}"
      end
    end

  end
end