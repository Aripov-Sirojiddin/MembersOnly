json.extract! post, :id, :title, :description, :club_house_id, :created_at, :updated_at
json.url post_url(post, format: :json)
