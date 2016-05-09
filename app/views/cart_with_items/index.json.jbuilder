json.array!(@cart_with_items) do |cart_with_item|
  json.extract! cart_with_item, :id, :quantity, :user_id, :cart_id
  json.url cart_with_item_url(cart_with_item, format: :json)
end
