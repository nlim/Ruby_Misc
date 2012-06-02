class Transaction 
	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b
	end
	
	private
		def debit (account, amount)
			account.balance -= amount
		end
		
		def credit (account, amount)
			account.balance += amount
		end
		
	public
		def transfer(amount)
			debit(@account_a, amount)
			credit(@account_b, amount)
		end
end