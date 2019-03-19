require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

@third_store = Store.find_by(id: 3)
puts @third_store
@third_store.destroy

puts Store.count
