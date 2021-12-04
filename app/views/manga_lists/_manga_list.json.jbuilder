json.extract! manga_list, :id, :name, :created_at, :updated_at
json.url manga_list_url(manga_list, format: :json)
