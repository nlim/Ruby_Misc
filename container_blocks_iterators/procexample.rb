class ProcExample
	
	def pass_in_block(&action)
		@stored_proc = action
	end
	
	def use_proc(parameter)
		@stored_proc.call(parameter)
	end
	

end

def create_block_object(&block)
	block
end

def n_times(thing)
	lambda {|n| thing * n }
end

proc1 = lambda do |a, *b, &block| 
	puts "a = #{a.inspect}"
	puts "b = #{b.inspect}" 
	block.call
end


eg = ProcExample.new
eg.pass_in_block {|p| puts "Called the Proc, printing: #{p}"} 
eg.use_proc("David")

x = create_block_object { |p| puts "I, #{p}, am cool!" }
x.call "Phillip"


p1 = n_times(23)
puts p1.call(3) # => 69
puts p1.call(4) # => 92
p2 = n_times("Hello ")
puts p2.call(3) # => "Hello Hello Hello "

proc1.call(1, 2, 3, 4) { puts "in block1" }