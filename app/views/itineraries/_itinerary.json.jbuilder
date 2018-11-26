json.extract! itinerary, :id, :name, :localName, :content, :intro, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)
