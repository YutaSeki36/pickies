json.extract! book, :id, :title, :image_url, :read_count, :page_amount, :uid, :created_at, :updated_at
json.url book_url(book, format: :json)
