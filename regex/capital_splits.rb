
def transform(str)
  output, temp = [], ""
  str.split(/([[:upper:]][[:lower:]]*)/)
    .delete_if(&:empty?)
    .map(&:downcase).each do |i|

    if i.length > 1
      if temp.length > 0
        output << temp
        temp = ""
      end  
      output << i
    else  
      temp << i
    end
  
  end

  output << temp if temp.length > 0
  output.join('_')
end

test_strings = ["chickenLittle", "Blacken", "FORWard"]
puts test_strings.join(', ')
puts test_strings.map{|s| transform(s)}.join(', ')
