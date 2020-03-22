# stockmarket-app-
This program takes in investment details during different times periods and responds with your investment details with profit/loss returns and share values.
Your input would involve making a new object and should like this

tesla = Company.new("Tesla", "TSLA", 772.50)

tesla.add_transaction(Transaction.new("buy", 1.4, 1057.01, '2020-02-5 09:31:10'))

tesla.add_transaction(Transaction.new("buy", 2.38, 1992.35, '2020-02-25 15:10:00'))

tesla.add_transaction(Transaction.new("buy", 0.15, 125.70, '2020-02-27 09:31:10'))

tesla.add_transaction(Transaction.new("sell", 0.15, 125.70, '2020-02-28 09:31:10'))

add_transaction: takes in an action, shares, value (at that point) & date

The output will look this 
Your Investment on Tesla (TSLA)
-------------------------------
Total number of shares: 7.25306135
Value: $5,599.58
Return: +$429.60 / UP 8.31%

Your Transactions
-------------------------------

#1 Buy: 25th Feb, 15:11
0.15 share for -$125.70 ($838 per share)

#2 Buy: 26th Feb, 15:11
1 share for -$925.70 ($925.70 per share)

#2 Sell: 27th Feb, 15:11
2 share for +$1925.70 ($925.70 per share)

=end
