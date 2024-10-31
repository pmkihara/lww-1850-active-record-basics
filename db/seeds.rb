# frozen_string_literal: true

require 'faker'
require "json"
require "rest-client"

puts 'Creating restaurants'

# mc = Restaurant.new(name: 'McDonalds', address: 'Av. Paulista, 1000')
# mc.save!

# bk = Restaurant.new(name: 'Burger King', address: 'Av. Paulista')
# bk.save!

100.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address)
  restaurant.save
end

# response = RestClient.get "https://api.github.com/users/lewagon/repos"
# repos = JSON.parse(response)

# repos.each do |repo|
#   restaurant = Restaurant.new(name: repo['name'], address: repo['full_name'])
#   restaurant.save!
# end

puts 'All done!'
