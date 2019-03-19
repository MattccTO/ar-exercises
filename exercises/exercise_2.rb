require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@first_store = Store.find_by(id: 1)
puts @first_store.name
@second_store = Store.find_by(id: 2)

@first_store.name = 'Burnaby? More like Shmurnaby'
@first_store.save
puts @first_store.name
