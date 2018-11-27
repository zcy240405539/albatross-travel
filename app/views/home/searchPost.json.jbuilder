json.posts do 
	json.array!(@posts) do |post|
		json.name post.title
		json.id post.id
		json.url post_path(post)
	end
end
