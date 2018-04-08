require 'pry'

def reformat_languages(languages)
  new_hash={}
  languages.each do |style, language_data|
    language_data.each do |language, type_hash|
      if new_hash[language].class == NilClass
        new_hash[language] = type_hash
        new_hash[language][:style] = [style]
      else
        new_hash[language][:style].push(style)
      end
    end
  end
  new_hash
end
