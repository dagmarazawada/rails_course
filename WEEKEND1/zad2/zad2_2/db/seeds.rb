100.times do
	a = Person.create(name: Faker::Name.first_name)

	10.times do
		Book.create(title: Faker::Name.title, author: a)
	end	
end