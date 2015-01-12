def sum_part(array,start,last)
	sum = 0
	for i in start..last
		sum+=array[i]
	end
	sum
end

def sum(array)
  max = array[0]
  for start in 0..array.size-1 do
  		for last in start+1..array.size-1 do
  			sum = sum_part(array,i,j)
  			max =sum if sum>max
  		end
  end
  max
end

puts sum([1,5,-100,5,10,2,5])