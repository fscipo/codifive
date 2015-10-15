class AgregarFechaVencimientoToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :vencimiento, :date
  end
end
