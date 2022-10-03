#Odin Project Stock Picker Project

#Implement a method #stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days representing 
#the best day to buy and the best day to sell. Days start at 0.

#Tips:
#-You need to buy before you can sell
#-Pay attention to edge cases like when the lowest day 
#is the last day or the highest day is the first day.

'''
#not correct, but parts may still be useful
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

combos = prices.drop(1).product(prices)

idx_amt = prices.count - 1

> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12

'''
def stock_picker(prices)
  pairs = []
  y = prices.count - 1
  while y != 0
    x = y - 1
    pairs.push([prices[x], prices[y]])
    until x == 0
      x -= 1
      pairs.push([prices[x], prices[y]])
    end
    y -= 1
  end
  return pairs
end
    


  
end

x = 0

while x < prices.count
  if x != prices.count - 1
    break
  elsif pairs.push([prices[x], prices[x+1]]
  end
  x += 1
end





end



# Iterate through stock array to determine high and low

# If high is [0] or low is [-1], pass to next highest or lowest

# Low needs to be before high, so it's not lowest in array, it's lowest before highest...
# There is some math to figure out which combination of low vs high is the best deal.
# Maybe use iteration through range 0-prices[current] to find lowest and subtract. Pair with 
# greatest difference is returned to result array

# I'm trying to get the successive smaller pairs for this stock picker thing.

# so pairs of numbers at these indices of the array:
# (0,1)
# (0,2),(1,2)
# (0,3),(1,3),(2,3)

# OK- subtraction-

# get combination of viable pairs
# create hash where pair: difference <I don't know about this
# sort by difference
# return pair


# if idx_amt - n == 0
# end


# Return index to result array [lowest,highest] 

#print "for a profit of {#higest} - {#lowest} == highest-lowest
