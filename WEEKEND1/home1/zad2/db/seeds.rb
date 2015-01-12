User.destroy_all

10.times do
	User.create(username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(8)
		)
end

puts "Users created"

10.times do
	Product.create(ean: Faker::Code.ean,
		name: Faker::Commerce.product_name,
		description: Faker::Lorem.sentence,
		active: [true, false].sample,
		published: User.all.sample.id
		)
end

puts "Products created"