!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

bike = Bike.new(
  :id => 1,
  :color => :pink,
  :price => 99.99,
  :luggage => Luggage.new(:items => items)
)

puts "Total Price: #{bike.price}, Total Weight: #{bike.weight}"
