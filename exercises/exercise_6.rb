require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sarah", last_name: "Jones", hourly_rate: 80)
@store1.employees.create(first_name: "Ahmed", last_name: "Gurel", hourly_rate: 70)
@store1.employees.create(first_name: "Kimmy", last_name: "Smits", hourly_rate: 60)
@store1.employees.create(first_name: "Def", last_name: "Jam", hourly_rate: 50)
@store1.employees.create(first_name: "Norah", last_name: "Mcdouble", hourly_rate: 62)
@store1.employees.create(first_name: "Bill", last_name: "Doink", hourly_rate: 50)
@store1.employees.create(first_name: "Vicky", last_name: "Mochama", hourly_rate: 60)
@store1.employees.create(first_name: "Tom", last_name: "Dabom", hourly_rate: 45)
@store1.employees.create(first_name: "Denise", last_name: "Balka", hourly_rate: 60)
@store2.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 40) # rescue puts 'nope'
@store2.employees.create(first_name: "Valerie", last_name: "Hagi", hourly_rate: 100)
@store2.employees.create(first_name: "Bob", last_name: "Thed", hourly_rate: 60)
@store2.employees.create(first_name: "Mal", last_name: "Indima", hourly_rate: 80)
@store2.employees.create(first_name: "Kalen", last_name: "Jedda", hourly_rate: 57)
@store2.employees.create(first_name: "Mace", last_name: "Windu", hourly_rate: 90)
@store2.employees.create(first_name: "Getu", last_name: "Thachoppa", hourly_rate: 49)
@store2.employees.create(first_name: "Seymour", last_name: "Butts", hourly_rate: 65)
@store2.employees.create(first_name: "Hammond", last_name: "Eggs", hourly_rate: 68)
@store2.employees.create(first_name: "Jose", last_name: "Bautista", hourly_rate: 605)


### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.