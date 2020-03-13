require 'time'

class Transaction

#initializing transaction details given as input

  def initialize(action, shares, value, actioned_at)
    @action = action
    @shares = shares
    @value = value
    @actioned_at = actioned_at
  end
  


  def get_action
    @action
  end

  def get_shares
    @shares
  end

  def get_value
    @value
  end
  
  #printing transaction details

  def print_transaction
    puts "#{@action.capitalize}: #{date_formatted}"
    puts "#{@shares} share for #{value_formatted} (#{value_per_share.round(2)} per share)"
  end

  private
  #transaction details 
  
  #date formatted 
  
  def date_formatted
    Time.parse(@actioned_at).strftime("%c")
  end
  
  #transaction amount is formatted

  def value_formatted
    if @action == 'buy'
      "-$#{@value}"
    else
      "+$#{@value}"
    end
  end
  
  #value of one share at the given time period

  def value_per_share
    @value / @shares
  end

end
