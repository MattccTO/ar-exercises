require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...

test_user = @store2.employees.create(first_name: "Tess", last_name: "Ter", hourly_rate: 150)

puts test_user.password

# Employee.all.each do |e|
#   puts e.password
# end