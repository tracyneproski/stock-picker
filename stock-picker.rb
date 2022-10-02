#Odin Project Stock Picker Project

#Implement a method #stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days representing 
#the best day to buy and the best day to sell. Days start at 0.

#Tips:
#-You need to buy before you can sell
#-Pay attention to edge cases like when the lowest day 
#is the last day or the highest day is the first day.

'''
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12

'''

def stock_picker(prices)
  highest = prices.max()
  if prices.find_index(highest) == 0
    highest = prices.drop(1).max()
  end

  lowest = prices.min()
  if prices.find_index(lowest) == prices.count
    lowest = 

# Iterate through stock array to determine high and low

# If high is [0] or low is [-1], pass to next highest or lowest

# Return index to result hash [lowest,highest] 

#print "for a profit of {#higest} - {#lowest} == highest-lowest
