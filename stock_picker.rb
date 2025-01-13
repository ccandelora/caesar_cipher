def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  prices.each_with_index do |price, index|
    (index+1...prices.length).each do |sell_index|
      profit = prices[sell_index] - price
      if profit > max_profit
        max_profit = profit
        best_buy_day = index
        best_sell_day = sell_index
      end
    end
  end
  [best_buy_day, best_sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
