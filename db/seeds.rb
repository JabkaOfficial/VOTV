# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Album.destroy_all
Track.destroy_all
User.destroy_all

User.create!([{
    id: 1,
    email: "admin@gmail.com",
    password: "mini-admini",
    password_confirmation: "mini-admini",
    admin: 1
},
{
    id: 2,
    email: "default@gmail.com",
    password: "default",
    password_confirmation: "default",
    admin: 0
}])

Album.create!([{
    id: 1,
    name: "Hybrid Theory",
    author: "Linkin Park",
    release_year: 2000,
    length: "37:45",
    quantity: 8
},
{
    id: 2,
    name: "Meteora",
    author: "Linkin Park",
    release_year: 2003,
    length: "36:35",
    quantity: 7
},
{
    id: 3,
    name: "Minutes to Midnight",
    author: "Linkin Park",
    release_year: 2007,
    length: "43:23",
    quantity: 3
},
{
    id: 4,
    name: "A Thousand Suns",
    author: "Linkin Park",
    release_year: 2010,
    length: "47:48",
    quantity: 1
},
{
    id: 5,
    name: "Living Things",
    author: "Linkin Park",
    release_year: 2012,
    length: "36:59",
    quantity: 5
},
{
    id: 6,
    name: "The Hunting Party",
    author: "Linkin Park",
    release_year: 2014,
    length: "45:12",
    quantity: 10
},
{
    id: 7,
    name: "One More Light",
    author: "Linkin Park",
    release_year: 2017,
    length: "35:19",
    quantity: 1
},
{
    id: 8,
    name: "Transmissions",
    author: "Starset",
    release_year: 2014,
    length: "60:00",
    quantity: 3
},
{
    id: 9,
    name: "Vessels",
    author: "Starset",
    release_year: 2017,
    length: "70:21",
    quantity: 8
},
{
    id: 10,
    name: "Divisions",
    author: "Starset",
    release_year: 2019,
    length: "58:25",
    quantity: 3
}])

Track.create!([{
  name: "Papercut",
  length: "3:04",
  album_id: 1
},
{
  name: "One Step Closer",
  length: "2:35",
  album_id: 1
},
{
  name: "With You",
  length: "3:23",
  album_id: 1
},
{
  name: "Points of Authority",
  length: "3:20",
  album_id: 1
},
{
  name: "Crawling",
  length: "3:29",
  album_id: 1
},
{
  name: "Runaway",
  length: "3:03",
  album_id: 1
},
{
  name: "By Myself",
  length: "3:09",
  album_id: 1
},
{
  name: "In the End",
  length: "3:36",
  album_id: 1
}])