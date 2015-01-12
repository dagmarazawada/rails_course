def factorial(n)
	product = 1
	for i in (1..n) do
		product*=i
	end
	product
end

puts factorial(8)+factorial(5)

# klasy
class Person
	# metoda obiektu ponieważ każdy człowiek może inaczej iść do pracy
	def go_to_work
		p "Idę do pracy"
	end

	def initialize(arguments={})
		@name = arguments[:name]
		@surname = arguments[:surname]
		self.age = arguments[:age] if arguments.has_key?(arguments[:age])
	end

	def age=(age)
		@age = age if age>0
	end
=begin
	def age
		@age
	end	
=end
attr_reader :age

	def to_s
		# domysla sie ze chodzi nam o @name i @surname @age
		"#{name} #{surname} #{age}"
	end

	attr_accessor :name,:surname
	
	# to generuje nam automatycznie metody name= , name , surname= , surname
end
#obiektu
p = Person.new(surname: "Kowalski",name: "Adam",age: -5)
puts p
p.go_to_work    # p = Person.last p.full_name # metode obiektu

# klasa dziedziczy ma wszystkie metody , które ma klasa bazowa + atrybuty
class Employee < Person
	@@VAT = 23 #definicja zmiennej statycznej
	@@employees = []
	def initialize(hash={})
		super(hash)
		@salary = hash[:salary]
		@@employees<<self
	end
	# metody obiektu ponieważ były wołane na pojedyńczym obiekcie
	def salary
		@salary
	end
	# metoda statyczna to taka, która nie jest zależna od obiektu

	def self.get_electronic_vat
		23
	end
	# pobieramy zmienna statyczna
	def self.get_vat
		@@VAT
	end
	def self.last
		@@employees.last
	end

	def self.write_all_employees
		@@employees.each do |e|
			puts e
		end
	end
end
e = Employee.new(name: "Adam",age: 15,salary: 5000)
e1 = Employee.new(name: "Zdzisław",surname: "Pyton",age: 18)
Employee.write_all_employees

puts Employee.get_electronic_vat
puts Employee.get_vat
puts e.salary
e.go_to_work