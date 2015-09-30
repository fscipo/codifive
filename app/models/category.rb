class Category < ActiveRecord::Base
	has_many :products
	validates :nombre,
		presence: true,
		uniqueness: true

	default_scope -> { order("nombre") }
end
