json.extract! attraction, :id, :name, :localName, :content, :intro, :created_at, :updated_at, :region, :city, :post
json.url attraction_url(attraction, format: :json)
