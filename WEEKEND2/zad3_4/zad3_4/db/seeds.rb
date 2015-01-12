Employee.destroy_all

20.times do
	Employee.create(name: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		salary: rand(20000),
		commision: rand(1000))
end

p "Employees created"