module RegexTools
	def show_regexp(string, pattern) 
		puts make_intro(string, pattern)
		match = pattern.match(string) 
		if match
			puts "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
		else
			puts "no match"
		end 
	end
	
	def print_groups(string, pattern)
		puts make_intro(string, pattern)
		string.scan(pattern).each {|g| puts g}
	end

	def make_intro(string, pattern)
		"Matching Pattern: #{pattern.inspect} on String: \"#{string}\"" 
	end	

end