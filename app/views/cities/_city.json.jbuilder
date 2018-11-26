json.extract! city, :id, :name, :localName, :intro, :content, :created_at, :updated_at, :region, :attraction
json.url city_url(city, format: :json)
