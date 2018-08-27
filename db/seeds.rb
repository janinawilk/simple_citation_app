20.times do
  Citation.create(citation: Faker::RickAndMorty.quote,
    author: Faker::RickAndMorty.character)
end
