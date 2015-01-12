# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#puts "Starting seeds"

#Book.destroy_all


#20.times do
#	Author.create(name: Faker::Name.first_name, surname: Faker::Name.last_name)
#end

#100.times do
	#1
#	Book.create(title: Faker::Name.title, isbn: Faker::Code.isbn, author_id: Author.all.sample.id)
	#2

	#3

#end

#puts "Done"

puts "Start"

	Employee.destroy_all
	Organization.destroy_all

	20.times do
		Organization.create(name: Faker::Company.name, 
			income: Faker::Code.ean, # (100..10000).sample
			headquarters: Faker::Address.city)
	end

Organization.all.each do |organization|
	100.times do
	emp = Employee.new(name: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		city: Faker::Address.city)

	emp.organization = organization

	emp.save
	end
end

puts "End"


# Organization.last.employees << Employee.first - wrzucenie wszystkich pracowników do tej organizacji?








