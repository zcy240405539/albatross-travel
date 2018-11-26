json.extract! region, :id, :name, :localName, :content, :intro, :created_at, :updated_at, :cities, :attraction, :posts
json.url region_url(region, format: :json)
