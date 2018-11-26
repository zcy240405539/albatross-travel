json.extract! post, :id, :view, :title, :content, :created_at, :updated_at, :region, :city, :attraction
json.url post_url(post, format: :json)
