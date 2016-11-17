class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.references :order, foreign_key: true
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :shipping
      t.decimal :total

      t.timestamps
    end
  end
end
