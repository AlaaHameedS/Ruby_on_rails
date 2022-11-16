1000.times do
alaa=Author.create(firstname: Faker::Name.name, lastname: Faker::Name.name, address: Faker::Address.city)
2.times do
    alaa.Book.create(id_author: alaa, title: Faker::Book.title, publisher: Faker::Book.publisher, year: Faker::Vehicle.year)
    end
end 

