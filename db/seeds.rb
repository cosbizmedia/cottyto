# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create! :first_name => 'Cosmin', :email => 'cosminstudio@gmail.com', :password => 'mihalache1988', :password_confirmation => 'mihalache1988', :role => 'admin'
 
p "Created #{User.count} users"