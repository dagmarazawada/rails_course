10.times do 
	Shop.create(address: Faker::Address.street_address,
		name: Faker::Lorem.word,
		number_of_employees: Faker::Number.number(3)
		)
end