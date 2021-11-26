json.extract! review, :id, :manga_id, :title, :created_at, :updated_at
json.url review_url(review, format: :json)
