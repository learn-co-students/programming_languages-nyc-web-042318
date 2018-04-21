def reformat_languages(languages)
  new_hash = {}
  type_string = ""
  style_array = []
  languages.each do |style, name|
    name.each do |name, type|
      type.each do |type, type_name|
        if name == :ruby || name == :javascript || name == :python
          type_string = "interpreted"
        else 
          type_string = "compiled"
        end
        if name == :javascript || name == :ruby || name == :python || name == :java
          style_array = [:oo]
        else 
          style_array = [:functional]
        end
        if name == :javascript
          style_array.push(:functional)
        end
        new_hash[name] = {
          :type => type_string,
          :style => style_array
        }
      end
    end
  end
  new_hash
end
