10.times do
	User.create(username: Faker::Internet.user_name,
		status: 'active',
		confirmed: true)
end

10.times do
	User.create(username: Faker::Internet.user_name,
		status: 'inactive',
		confirmed: false)
end

p "Users created"