class Category < ActiveRecord::Base
	has_many :products
	validates :nombre,
		presence: true,
		uniqueness: {message: "No se puede repetir las categorias"}

	default_scope -> { order("nombre") }
end
