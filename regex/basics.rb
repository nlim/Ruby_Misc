require_relative "regex_tools"
include RegexTools

p "Testing if there is a regex match using the =~ operator"
p /cat/ =~ "dog and cat"
p /cat/ =~ "catch"
p "dog and cat" =~ /cat/ 
p "catch" =~ /cat/ 
p "Cat" =~ /cat/ 
str = "cat and dog"
if str =~ /cat/
	puts "There must be a cat in here"
end
p "Using subsitution"
str = "Dog and Cat"
puts "Let's go to the #{str} for a pint."
str.sub!(/Cat/, "Gerbil")
puts "Let's go to the #{str} for a pint."
str = "Dog and Cat"
new_str1 = str.sub(/a/, "*") 
new_str2 = str.gsub(/a/, "*") 
puts "Using sub: #{new_str1}" 
puts "Using gsub: #{new_str2}"
month_year_pattern = %r{^\d{1,2}/\d{4}$}
year_strings = ["12/2011", "5/2012", "345/4450", "12/1988"]
year_strings.each do |y|
	puts y if y =~ month_year_pattern
end
puts "More Basics"
show_regexp('very interesting', /t/) 
show_regexp('Fats Waller', /a/)
show_regexp('Fats Waller', /lle/)
show_regexp('Fats Waller', /z/)
a = "red ball blue sky"
show_regexp(a, /d|e/) 




	