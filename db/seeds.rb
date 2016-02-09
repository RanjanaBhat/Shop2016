# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c = Customer.find_by_name('Raj')
if c.present?
	puts "Already exists!"
else
	c = Customer.create(name: 'Raj')
	c.address_details.build( line1: 'AAI Nandanvan Nagar', line2: 'Shraddha Colony', city: 'Jalgaon', state: 'Maharashtra', postcode: '425002', country: 'India').save!	
end
# c = Customer.find_by_name('Raj')
# if c.present?
# 	puts "Already exists!"
# else
# 	c = Customer.create(name: 'Raj')
# 	c.address_details.build( line1: 'AAI Nandanvan Nagar', line2: 'Shraddha Colony', city: 'Jalgaon', state: 'Maharashtra', postcode: '425002', country: 'India').save!	
# end
# c = Customer.find_by_name('Raj')
# if c.present?
# 	puts "Already exists!"
# else
# 	c = Customer.create(name: 'Raj')
# 	c.address_details.build( line1: 'AAI Nandanvan Nagar', line2: 'Shraddha Colony', city: 'Jalgaon', state: 'Maharashtra', postcode: '425002', country: 'India').save!	
# end
# c = Customer.find_by_name('Raj')
# if c.present?
# 	puts "Already exists!"
# else
# 	c = Customer.create(name: 'Raj')
# 	c.address_details.build( line1: 'AAI Nandanvan Nagar', line2: 'Shraddha Colony', city: 'Jalgaon', state: 'Maharashtra', postcode: '425002', country: 'India').save!	
# end
# c = Customer.find_by_name('Raj')
# if c.present?
# 	puts "Already exists!"
# else
# 	c = Customer.create(name: 'Raj')
# 	c.address_details.build( line1: 'AAI Nandanvan Nagar', line2: 'Shraddha Colony', city: 'Jalgaon', state: 'Maharashtra', postcode: '425002', country: 'India').save!	
# end