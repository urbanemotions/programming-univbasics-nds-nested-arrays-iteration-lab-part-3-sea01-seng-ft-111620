def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  
  output_string = []
  row_index = 0 
  
  while row_index < src.count do 
    element_index = 0 
    single_string_value = ""
    while element_index < src[row_index].count do
      if !src[row_index][element_index].is_a? Integer
        output_string << src[row_index][element_index]
        output_string << " "
        output_string << single_string_value
      end
      element_index += 1
    end
    row_index += 1    
  end
  output_string.join\
end