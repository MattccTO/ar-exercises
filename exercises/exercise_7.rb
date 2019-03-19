require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Hey buddy, give me a store name>"
user_store = gets.chomp

new_store = Store.create(name: user_store) #, annual_revenue: 224000, mens_apparel: false, womens_apparel: false)

new_store.errors.full_messages.each do |e|
  puts e
end
