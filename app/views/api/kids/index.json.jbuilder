json.array! @kids.each do |kid|
  json.id kid.id
  json.name kid.name
  json.price kid.price
  json.description kid.description
  json.image_url kid.image_url
  json.link "http://localhost:3000/api/kids/#{kid.id}"
end