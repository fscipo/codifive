class Offer < ActiveRecord::Base

	belongs_to :product

		validates :razon,
			presence: true
		validates :precio,
			presence: true
		validates :tarjeta,
			presence: true,
			numericality: true
		validates :codigo,
			presence: true,
			numericality: true
				

end
