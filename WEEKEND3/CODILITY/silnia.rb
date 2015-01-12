def factorial(n)
(2..n).inject{|product,x| product *x }
end
# select inject map sum

def factorial2(n)
	product = 1
	(2..n).each { |i| product*=i // product = product*i}
	product
end

def f(n)
	product = 1
	(2..n).each do |i| 
		product*=i
	end	
	product
end

def factorial3(n)
	product = 1
	for i in 2..n
		product*=i
	end
	product
end

def factorial4(n)
	product = 1
	i = 2
	while (i<=n) do
		product*=i
		i+=1
	end 
	product
end

puts f 5
puts factorial 5
puts factorial2 5
puts factorial3 5
puts factorial4 5