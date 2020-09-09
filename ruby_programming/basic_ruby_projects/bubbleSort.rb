test1 = [9,6,2,5,1,3,10,4,8,7]
test2 = [9,3,2,4,1,5,7,10,8,6]
test3 = [10,9,8,7,6,5,4,3,2,1]

def bubbleSort(array)
  len = array.length
  for i in 0...array.length
    for j in 0...len-1
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
    end
    len -= 1
  end
  array
end

puts bubbleSort(test1).to_s
puts bubbleSort(test2).to_s
puts bubbleSort(test3).to_s
