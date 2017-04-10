json.extract! favoriten, :id, :user_id, :karteikarten_id, :created_at, :updated_at
json.url favoriten_url(favoriten, format: :json)
