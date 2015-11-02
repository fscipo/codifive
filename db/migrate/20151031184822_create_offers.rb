class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :razon
      t.decimal :precio
      t.integer :product_id
      t.integer :client_id
      t.integer :tarjeta
      t.integer :codigo

      t.timestamps
    end
  end
end
