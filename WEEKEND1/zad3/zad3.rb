puts "zad3"

# 1 c++, inne języki
sum = 0
for i in 3..1000 do
	if i%3 == 0 || i%5 == 0
		sum+=i
	end
end

puts sum


# 2 ruby way
puts (3..1000).select { |el| el%3 == 0 || el%5 == 0}.inject {|s,n| s+=n}

# project Euler - inne zadania




