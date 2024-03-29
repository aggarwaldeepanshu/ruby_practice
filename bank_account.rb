class BankAccount
	def initialize(name)
		@name=name.capitalize
		@transactions=[]
		@transactions.push({"description"=>"Initial","amount"=>0})
	end

	def credit(description,amount)
		add_transactions(description,amount)
	end

	def debit(description,amount)
		add_transactions(description,-amount)
	end

	def add_transactions(description,amount)
		@transactions.push({"description"=> description, "amount"=> amount})
	end

	def balance()
		balance=0
		@transactions.each do |transaction|
			balance += transaction["amount"]
		end
		return balance
	end

	def to_s
		#{}"Name: #{@name}  Balance: #{balance}"
		"Name: #{@name}  Balance: #{sprintf("%0.2f",balance())}"
	end

	def print_register()
		puts "#{@name}'s Register"

		puts "Description".ljust(30) + "Amount".rjust(10)

		@transactions.each do |transaction|
			puts transaction["description"].ljust(30) + sprintf("%0.2f",transaction["amount"]).rjust(10)
		end

		puts "Balance".ljust(30) + "#{sprintf("%0.2f",balance())}".rjust(10)
	end

end

bank_account=BankAccount.new("deepanshu")

#puts bank_account.inspect

bank_account.credit("paycheck",100)
bank_account.debit("groceries",50)
bank_account.debit("food",2.75)

puts bank_account.inspect
#puts "welcome"
puts "balance is: #{bank_account.balance()}"

puts bank_account

bank_account.print_register()