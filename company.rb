class Company

  

  def initialize(name, short_code, current_value)
    @name = name
    @short_code = short_code
    @current_value = current_value
    @transactions = []
  end
  
  #adding transactions to an array

  def add_transaction(t)
    @transactions << t
  end
  
  #gets array of transactions

  def get_transactions
    @transactions
  end
  
  #printing out company details and total values

  def print_investment
    puts ""
    puts "Your Investment on #{@name} (#{@short_code})"
    puts "-------------------------------"
  
    puts "Total number of shares: #{total_number_of_shares}"
    puts "Value: #{total_value_of_shares.round(2)}"
    puts "Return: $#{return_sum.round(2)} / #{increment_status} #{percentage_change.round(2)}%  "
    puts ""

    puts "Your Transactions"
    puts "-------------------------------"

    @transactions.each do |t|
      t.print_transaction
      puts ""
    end

    puts ""
  end

  private
  
  #calculates the total number of shares

  def total_number_of_shares
    total = 0

    @transactions.each do |t|
      if t.get_action == 'buy'
        total += t.get_shares
      else
        total -= t.get_shares
      end
    end

    total
  end
  
  #value of shares the investor holds 

  def total_value_of_shares
    total_number_of_shares * @current_value
  end
  
  #calculating the profit/loss amount from investment 

  def return_sum
    @money = 0
    @transactions.each do |t|
      if t.get_action == 'buy'
        @money = @money + t.get_value
      elsif t.get_action == 'sell'
        @money = @money - t.get_value
      end
    end
    total_value_of_shares - @money
  end
  
  # calculating deviation percentage from total investment 

  def percentage_change
    return_sum / @money * 100
  end
  
  # profit or loss tataus
  def increment_status
    status = 0
    if percentage_change < 0
      status = "DOWN"
    elsif percentage_change > 0
      status = "UP"
     end
  end
end


