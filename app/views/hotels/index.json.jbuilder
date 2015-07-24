json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :title, :stars, :breakfast, :description, :image_url, :price
  json.url hotel_url(hotel, format: :json)
end
