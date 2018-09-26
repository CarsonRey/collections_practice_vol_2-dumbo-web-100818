require 'pry'
def begins_with_r(array)
  array.all? do |word| 
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    if word.class != String
      next
    else
    word.start_with?("wa")
  end
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
    end
end

def count_elements(array)
new_array = []
array.each do |hash|
    hash.each do |key, name|
    new_array << {key => name, :count => "#{array.count(name)}"}
    count = new_array.count(name)
    
    binding.pry
       
    end
  end
  new_array
end

# [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]
# [{:name=>"blake"}, {:name=>"blake"}, {:name=>"ashley"}]

def merge_data(keys, data)
  array = []
  data.each do |info_hash|
    info_hash.each do |name, info|
      array << info
      keys.each do |hash|
        hash.each do |key, value|
           array.each do |big_hash|
             if (big_hash.include?(key) == false) && value == name
               big_hash[key] = value
             end
           end
        end
      end
  end
end
array
end

def find_cool(cool)
  the_coolest = []
  cool.each do |info_hash|
    info_hash.find do |key, value|
    if value == "cool"
    the_coolest << info_hash   
    end
  end
end
the_coolest
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |program, location_hash|
    location_hash.collect do |key, location|
      if new_hash[location] == nil
        new_hash[location] = []
        new_hash[location] << program
      else 
        new_hash[location] << program
      end
    end
    end
new_hash
end
