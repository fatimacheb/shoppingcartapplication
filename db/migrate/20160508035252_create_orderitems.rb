class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.belongs_to :order, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
