require "pry"

def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, style_data|
      style_data.each do |prog_lang, type_hash|
        if new_hash[prog_lang] == nil
          new_hash[prog_lang] = type_hash
          new_hash[prog_lang][:style] = [style]
        else
          new_hash[prog_lang][:style] << style
        end
      end
    end
new_hash
end
