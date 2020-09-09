stocks = [17,3,6,9,15,8,6,1,10]
worst_case = [10,9,8,7,6,5,4,3,2,1]

def stockPicker(array)
  buy = 0
  sell = 0
  max = -1
  for i in 0...array.length
    for j in i...array.length
      # every time we have a better net gain, we store these days
      if (array[j] - array[i]) > max
        max = (array[j] - array[i])
        buy = i
        sell = j
      end
    end
  end
  [buy, sell]
end

result = stockPicker(stocks)
print "[" + result[0].to_s + "," + result[1].to_s + "]" + "\n"
# worst case is when the stock only decreases,
# in which you would have to buy and sell on the same day to avoid losing money
puts stockPicker(worst_case)
