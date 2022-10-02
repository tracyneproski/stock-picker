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
  if prices.find_index(prices.max()) == 0
    highest = prices.drop(1).max()
  else
    highest = prices.max()
  end

  if prices.find_index(prices.min()) == prices.count - 1
    lowest = prices[0..prices[prices.count - 2]].min()
  else
    lowest = prices.min()
  end
end

end



# Iterate through stock array to determine high and low

# If high is [0] or low is [-1], pass to next highest or lowest

# Low needs to be before high, so it's not lowest in array, it's lowest before highest...
# There is some math to figure out which combination of low vs high is the best deal.
# Maybe use iteration through range 0-prices[current] to find lowest and subtrack. Pair with 
# greatest difference is returned to result array

# Return index to result array [lowest,highest] 

#print "for a profit of {#higest} - {#lowest} == highest-lowest
