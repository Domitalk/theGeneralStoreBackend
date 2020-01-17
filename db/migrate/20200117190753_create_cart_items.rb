class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.belongs_to :Cart, null: false
      t.belongs_to :Item, null: false

      t.timestamps
    end
  end
end
