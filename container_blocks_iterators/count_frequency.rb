#!/usr/bin/ruby

def count_frequency(word_list)
	counts = Hash.new(0)
	word_list.each do |word|
		counts[word] += 1 
	end
	counts
end

def get_words
	word_list = []
	while line = gets
		line.downcase.scan(/[\w']+/).each do |word|
			word_list << word
		end
	end
	word_list
end

counts = count_frequency(get_words)
most_frequent = counts.sort_by{|word, count| count}.reverse.first(5)
most_frequent.each do |word, count|
	puts "#{word}: #{count}"
end