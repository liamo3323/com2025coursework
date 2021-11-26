json.extract! manga, :id, :title, :availability, :volumeNum, :owner, :borrower, :value, :created_at, :updated_at
json.url manga_url(manga, format: :json)
