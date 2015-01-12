def max_sum(array)
  max = array[0]
  sum = array[0]
  for i in 1..array.length-1 do 
  	  sum+=array[i]
  	  max = sum if sum>max
  	  sum = 0 if sum<0
  end
  max
end
puts max_sum([1,5,-100,5,10,2,5])
puts max_sum [-2,-1,1000,1000,24,513,12,12,-100000000,5,22]