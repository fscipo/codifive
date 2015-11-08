class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :product_id
      t.integer :client_id
      t.text :pregunta
      t.text :respuesta

      t.timestamps
    end
  end
end
