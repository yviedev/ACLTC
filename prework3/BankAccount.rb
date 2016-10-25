=begin
Recreate the BankAccount in your own text editor.
1. Add an attribute that indicates whether the account is a checking account, a savings account, or a CD.
2. Update the withdraw method so that if one withdraws money from a CD, they also lose an additional 10% of the money they’re withdrawing due to penalties. For example, if one is withdrawing 10 dollars, they also get hit with a 1 dollar penalty. So if they were withdrawing 10 dollars from a CD that contained 100 dollars, they’d be left with 89 dollars.
3. Update the transfer_funds_to method to ensure that one cannot transfer funds from a CD or to a CD.
=end

class BankAccount
	def initialize(starting_balance)
		@balance = starting_balance
	end
	def bank_account_type
	    @CD = "CD"
	    @Checking = "Checking"
	    @Savings = "Savings"
	end
	def attribute=(type) # must use = if you want to create an instance variable vs just having a local variable
	    @attribute = type
	end
	def attribute
	    return @attribute
	end
	def balance
		return @balance
	end
	def deposit(money)
		@balance += money
	end
	def penalty
	    if @attribute == "CD"
		    @penalty = 0.10
        else
		    @penalty = 0
        end
        return @penalty
    end
	def withdraw(money)
	    penalty
		if @balance - money >= 0
			@balance -= ((money * @penalty) + money)
			return money
		else
			return 0
		end
	end
	def transfer_funds_to(bank_account, money)
	    if @attribute == "CD" || bank_account.attribute == "CD"
	        puts "Transfers to or from CD accounts are not allowed."
	    else
		    available_funds = withdraw(money)
		    bank_account.deposit(available_funds)
		end
	end
end

account1 = BankAccount.new(100)
account1.attribute=("CD")
account1.penalty

account2 = BankAccount.new(0)
account2.attribute=("checking")

account1.transfer_funds_to(account2, 30)
account1.withdraw(10)

puts "The first bank account now has a balance of $#{account1.balance}, is a #{account1.attribute} account and so the penalty amount is $#{account1.penalty}."
puts "The second bank account now has a balance of $#{account2.balance}, is a #{account2.attribute} account and so the penalty amount is $#{account2.penalty}."
