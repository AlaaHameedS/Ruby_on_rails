json.authors Author.all do |author|
json.id author.id
  json.firstname author.firstname
  json.lastname author.lastname
  json.address author.address

  json.books Book.all do |book|
    json.id book.id
    json.id_author book.id_author
      json.title book.title
      json.publisher book.publisher
      json.year book.year
    
    end


end