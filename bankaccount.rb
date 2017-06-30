
class Bankaccount

  def initialize(balance, interest)
    @balance = balance
    @interest_rate = interest
  end

  def balance
    puts "my balance is $#{@balance}"
  end

  def interest_rate
    puts "interest rate is #{@interest_rate}%"
  end

# #writer
#   def interest_rate=(interest)
#     @interest_rate = interest
#   end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(withdraw_amount)
    @balance = @balance - withdraw_amount
  end

  def gain_interest
    @gain_interest = @balance * (@interest_rate/100.0)
  end

end
