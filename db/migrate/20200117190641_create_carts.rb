class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :User, null: false
      t.boolean :cart_open, :default => true 
      t.timestamps
    end
  end
end
