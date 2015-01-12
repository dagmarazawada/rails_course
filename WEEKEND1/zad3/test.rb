puts "Hello world "

if 10 > 20
	puts "10 jest większe"
else 
	puts "20 jest większe"
end

puts "10 jest większe od 5" if 10>5

p "bla bla bla"

puts 10 < 5 ? "true bla bla" : "false bal bla"


def hello(n)
	n.times do
		puts "hello"
	end
end

hello(3)

hello 2

a = {key1: 'value1', key2: 'value2'}

puts a.class

puts a[:key1]


name = "dagmara"

puts "nazywam się #{name} \n nowa linia"

a = name
puts a.reverse
puts a

puts a.reverse!
puts a


puts "string index?"[3]

b = "Raz.dwa.trzy.cztery"

c = b.split(".")

puts c

d = c.join(", ")
puts d

e = "01234567"

puts e[4..-1] # do ostatniego elementu

puts e[4..-2] # do przedostatniego elementu

puts "żeby przekazać integer i połączyc ze string: " + 5.to_s

puts "cośtam coś tam coś".sub("tam", "tamtam")


puts f = ["raz", "dwa", "trzy"]


#f.select.....

#f.grep(/regular expr/)














