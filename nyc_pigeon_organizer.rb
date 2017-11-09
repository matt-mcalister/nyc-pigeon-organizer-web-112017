require 'pry'

def nyc_pigeon_organizer(data)
  result = {}
  data.each do |attribute, hash|
    hash.each do |sub_attribute, array|
      array.each do |name|
        if !(result.keys.include?(name))
          result[name] = {}
          result[name][attribute] = []
        elsif !(result[name].keys.include?(attribute))
          result[name][attribute] = []
        end
          result[name][attribute] << sub_attribute.to_s
      end
    end
  end
  result
  # binding.pry
end
