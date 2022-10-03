#Odin Project Stock Picker Project

#Implement a method #stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days representing 
#the best day to buy and the best day to sell. Days start at 0.

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

  difference = []
  pairs.each do |pair|
    difference.push(pair[1] - pair[0])
  end

  best_days = pairs[difference.index(difference.max())]
  result = []
  result.push(prices.index(best_days[0]), prices.index(best_days[1]))
end

puts "Please provide a list of comma-separated daily prices. Ex: 17,3,6,9,15,8,6,1,10 \n"

prices = gets
prices = prices.chomp
prices = prices.split(',').map(&:to_i)

final = stock_picker(prices)

p final