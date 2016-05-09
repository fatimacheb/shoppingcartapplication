class Order < ActiveRecord::Base
  belongs_to :user
 # has_many :orderitem
  #has_many :items, throught: :orderitem
end
