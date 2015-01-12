def find_minus_1(array)
 sum = 1
 index = 0
 while(array[index]!=-1) do
   index = array[index]
   sum+=1
 end
 sum
end

puts find_minus_1 [2,1,3,4,5,-1]
