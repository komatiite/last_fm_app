# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start loading Last.fm data'

Tag.delete_all

response = HTTParty.get('http://ws.audioscrobbler.com/2.0/?method=tag.getTopTags&api_key=2a4a5e1c9cde9e0d419cad96168a3413&format=json')
json_data = JSON.parse(response.body)



json_data["toptags"]["tag"].each do |tag|
  #puts tag["name"]
  Tag.create!(name: tag["name"], count: tag["count"])
end

puts 'Last.fm data loaded!'