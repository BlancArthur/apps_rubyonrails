json.extract! tableau, :id, :title, :content, :image, :created_at, :updated_at
json.url tableau_url(tableau, format: :json)
