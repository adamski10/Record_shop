require('pry')
require_relative('../models/albums.rb')
require_relative('../models/artist.rb')

Albums.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  "name" => "Oasis"
})

artist1.save()

artist2 = Artist.new({
  "name" => "Johnny Cash"
})

artist2.save()

album1 = Albums.new({
  "title" => "Definitely maybe",
  "genre" => "rock",
  "artist_id" => artist1.id
})

album1.save()

binding.pry
nil