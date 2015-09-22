class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :category_id
      t.integer :user_id
      t.text :descripcion
      t.string :foto

      t.timestamps
    end
  end
end
