json.extract! webpage, :id, :raw_html, :url, :created_at, :updated_at
json.url webpage_url(webpage, format: :json)
