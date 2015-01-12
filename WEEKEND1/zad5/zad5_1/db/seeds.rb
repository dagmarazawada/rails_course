Tweet.destroy_all
100.times do 
	Tweet.create(name: Faker::Commerce.product_name, 
		status: Faker::Lorem.sentence)
end
p "Tweets created"

#Product.destroy_all
#100.times do 
#	Product.create(name: Faker::Commerce.product_name, 
#		description: Faker::Lorem.sentence)
#end

#p "Products created"