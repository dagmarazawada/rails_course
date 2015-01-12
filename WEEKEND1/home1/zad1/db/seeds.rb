Advertisment.destroy_all

10.times do 
	Advertisment.create(title: Faker::Name.name,
		description: Faker::Lorem.sentence,
		photo_file_name: Faker::Company.logo)
end

puts "Advertisments created"

User.destroy_all

10.times do
	User.create(username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(8)
		)
end

puts "Users created"

