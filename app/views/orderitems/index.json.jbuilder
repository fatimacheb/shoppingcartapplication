json.array!(@orderitems) do |orderitem|
  json.extract! orderitem, :id, :order_id, :item_id
  json.url orderitem_url(orderitem, format: :json)
end
