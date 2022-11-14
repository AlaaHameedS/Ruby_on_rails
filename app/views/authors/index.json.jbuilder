json.authors Author.all do |author|
json.id author.id
  json.firstname author.firstname
  json.lastname author.lastname
  json.address author.address

end