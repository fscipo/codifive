class Offer < ActiveRecord::Base

	belongs_to :product

		validates :razon,
			presence: true
		validates :precio,
			presence: true,
			inclusion: { in: 1..99999, message: "El precio debe ser como mínimo 1 y como máximo 99.999" }
		validates :tarjeta,
			presence: true,
			numericality: true
		validates :codigo,
			presence: true,
			numericality: true
				

end
