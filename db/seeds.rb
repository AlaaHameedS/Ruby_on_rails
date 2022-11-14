1000.times do
Author.create(firstname: Faker::Name.name, lastname: Faker::Name.name, address: Faker::Address.city)
end

1000.times do
    Book.create(title: Faker::Book.title, publisher: Faker::Book.publisher, year: Faker::Vehicle.year)
    end


