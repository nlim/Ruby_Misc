module Summable
	def sum
		inject(:+)
	end	
end

class Array 
	include Summable
end
class Range 
	include Summable
end

class VowelFinder
	include Enumerable
	include Summable
	def initialize(string)
		@string = string.downcase
	end
	
	def each
		@string.scan(/[aeiou]/).each do |vowel|
			yield vowel
		end
	end

end


puts [1, 2, 3, 4, 5].sum
puts ('a' ..'m').sum
vf = VowelFinder.new("The quick brown fox jumped over the lazy dog")
puts vf.sum