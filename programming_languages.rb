def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, info| # style = :oo; info = {:ruby={}}, etc.
    info.each do |name, attributes| # name = {ruby, java}; attributes = {:type, etc.}
      if new_hash[name] # if name key already exists
        new_hash[name][:style] << style # puts in more styles
      else # if name key does not exist
        new_hash[name] = {} # make new key and hash
        new_hash[name][:type] = attributes[:type] # copies type from old hash
        new_hash[name][:style] = [style] # copies style over in an array
      end
    end
  end
  new_hash
end