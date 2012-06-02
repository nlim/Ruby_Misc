class Account
	attr_accessor	:balance
	
	def initialize(balance)
		@balance = balance
	end
	
	def to_s
		"Account => {:balance => #{balance}}"
	end
end