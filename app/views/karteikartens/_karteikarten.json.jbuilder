json.extract! karteikarten, :id, :titel, :vorderseite, :rueckseite, :aufrufe, :user_id, :kurse_id, :created_at, :updated_at
json.url karteikarten_url(karteikarten, format: :json)
