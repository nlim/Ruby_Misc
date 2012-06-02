require_relative "regex_tools"
include RegexTools

puts "Capturing every group"
date = "12/25/2010"
date_pattern = %r{(\d+)(/|:)(\d+)(/|:)(\d+)}
print_groups(date, date_pattern)
puts "Ignoring certain (unimportant) groups"
date_pattern = %r{(\d+)(?:/|:)(\d+)(?:/|:)(\d+)}
print_groups(date, date_pattern)
puts "Doing a look forward, also not capturing a group"
print_groups("red, white, and blue" , /[a-z]+(?=,)/)
puts "Doing a look behind"
show_regexp("seadog hotdog", /(?<=hot)dog/)
puts "Naming Groups"
["12:50am", "3:43pm", "11:14am"].each do |t|
	if /(?<hour>\d{1,2}):(?<min>\d\d)(..)/ =~ t
		puts "Hour is #{hour}, minute #{min}"
	end
end