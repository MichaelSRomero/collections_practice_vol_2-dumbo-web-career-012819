def begins_with_r(array)
<<<<<<< HEAD
  array.each do |element|
    if !element.start_with?("r")
      return false
    end
  end

  return true
end

def contain_a(array)
  # includes_a = []
  #
  # array.each do |element|
  #   if element.include?("a")
  #     includes_a << element
  #   end
  # end
  #
  # return includes_a
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.each do |element|
    string = element.to_s
    if string.start_with?("wa")
      return element
    end
  end

  return []
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  count = {}
  new_array = []

  array.each do |element|
    if count[element] == nil
      count[element] = 1
    else
      count[element] += 1
    end
  end

  count.each do |current_hash, current_count|
    current_hash.each do |key, value|
      new_hash = {key => value, :count => current_count}
      new_array.push(new_hash)
    end
  end

  return new_array
end

def merge_data(keys, data)
  data_array = []

  data.each do |hash|
    hash.each do |name_key, values|
      keys.each do |keys_hash|
        if keys_hash.values[0] == name_key
          data_array.push(keys_hash.merge(values))
        end
      end
    end
  end

  return data_array
end

def find_cool(array)
  cool_array = []

  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_array.push(hash)
      end
    end
  end

  return cool_array
end

def organize_schools(schools)
  organized = {}

  schools.each do |school_key, school_value|
    school_value.each do |key, location|
      if organized[location] == nil
        organized[location] = [school_key]
      else
        organized[location].push(school_key)
      end
    end
  end

  return organized
end
=======
  array.each do |tool|
    if !(tool.start_with?("r"))
      return false
    end
    
    return true
  end
end

>>>>>>> 7d5c8c6edaee78f823d0f9b397cf4b68210b971c
