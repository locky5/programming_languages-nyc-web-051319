def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, info| # style = :oo; info = {:ruby={}}, etc.
    info.each do |name, attributes| # name = {ruby, java}; attributes = {:type, etc.}
      if new_hash[name] # if new_hash has the name as a key
        new_hash[name][:style] << style # :style key is filled in by old
      else # if new_hash does not have the language as a key
        new_hash[name] = {}
        new_hash[name][:type] = attributes[:type] # copies type from old hash
        new_hash[name][:style] = [style] # copies styles over in an array
      end
    end
  end
  new_hash
end