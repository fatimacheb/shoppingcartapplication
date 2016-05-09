class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_with_items
  has_many :items, through: :cart_with_items
end
