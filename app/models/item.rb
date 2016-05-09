class Item < ActiveRecord::Base
	  has_many :orderitem
	  has_many :orders, through: :orderitem
	  has_many :cart_with_item
	  has_many :carts, through: :cart_with_item
end
