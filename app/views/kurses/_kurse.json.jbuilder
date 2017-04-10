json.extract! kurse, :id, :kursname, :gruppen_id, :created_at, :updated_at
json.url kurse_url(kurse, format: :json)
