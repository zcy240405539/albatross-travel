json.posts do 
	json.array!(@posts) do |post|
		json.name post.title
		json.url post_path(post)
	end
end

json.itineraries do 
	json.array!(@itineraries) do |itinerary|
		json.name itinerary.name
		json.url itinerary_path(itinerary)
	end
end

json.attractions do 
	json.array!(@attractions) do |attraction|
		json.name attraction.name
		json.localName attraction.localName
		json.url attraction_path(attraction)
	end	
end

json.cities do 
	json.array!(@cities) do |city|
		json.name city.name
		json.localName city.localName
		json.url city_path(city)
	end
end

json.regions do 
	json.array!(@regions) do |region|
		json.name region.name
		json.localName region.localName
		json.url region_path(region)
	end
end