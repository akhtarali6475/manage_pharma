json.extract! product, :id, :name, :title, :description, :avatars, :price, :discount, :in_stock, :published, :created_at, :updated_at
json.url product_url(product, format: :json)
