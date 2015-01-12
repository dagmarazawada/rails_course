product = 1

for i in (1..5) do
	product += 1	
end

product2 = 1
for i in (1..5) do
	product2 += 1	
end

puts product + product2

# 
def factorial(n)
	product = 1
	for i in (1..5) do
		product += i	
	end
	product
end

puts factorial(8) + factorial(5)


# klasa (musi sie zaczynać od dużej litery):
class Person
	# metoda obiektu:
	def go_to_work
		p "ide do pracy"
	end


=begin
	# zmienne @name, @surname...
	setter - ustawia atrybut klasy, obiektu
	def name=(name)
		@name = name
	end
	def surname=(surname)
		@surname = surname
	end


	 aby odwolać sie do danego atrybutu - definicja metody:
	def name
		@name
	end
	def surname
		@surname
	end
=end



	def initialize(arguments={})
		@name = arguments[:name]
		@surname = arguments[:surname]
	#	@age = arguments[:age] 
		self.age=arguments[:age]
	end

	def age=(age)
		@age = age if age > 0
	end

	def to_s
		"#{@name} #{@surname} #{age}"
	end


	# zamiast powyzszych wystarczy tyle:
	attr_accessor :name, :surname, :age
#	attr_reader :age


end

#obiekt
p = Person.new
p.go_to_work 
p.name = "Adam"
p.surname = "Kowalski"
# p = Person.last p.full_name - metody obiektu

puts p.name
puts p.surname

p = Person.new(name: "Jan", surname: "Nowak", age: -5)
puts p.name
puts p.surname
puts p.age

puts "###"
puts p
p.go_to_work


# klasa ktora dziedziczy ma wszystkie metody klasy bazowej + atrybuty
# dziedziczenie:
class Employee < Person

	# zmienne statyczne
	@@VAT = 23
	def self.get_vat
		@@VAT
	end

	@@employees = []

	def initilize(has={})
		super(hash)
		@salary = hash[:salary]
		@@employees<<self
	end
	# metody obiektu, bo byly wolane na pojedynczym obiekcie
	def salary
		@salary
	end

	# metoda statyczna to taka ktora nie jest zalezna od obiektu:
	def self.get_electronic_vat
		23
	end

	def self.last
		@@employees
	end

	def self.write_all_employees
		@@employees.each do |e|
			puts e
		end
	end
end

e = Employee.new(name: "Adam", age: 15, salary: 5000)
e2 = Employee.new(name: "Aaaa", age: 20, salary: 5000)
puts e
e.go_to_work

# metode statyczna wywolujemy na klasie
puts Employee.get_electronic_vat

# zmienna statyczna nie moze byc pobrana z zewnatrz tylko przez metode
puts Employee.get_vat

Employee.write_all_employees
