class CreateCartWithItems < ActiveRecord::Migration
  def change
    create_table :cart_with_items do |t|
      t.integer :quantity
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
