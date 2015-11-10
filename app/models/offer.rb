class Offer < ActiveRecord::Base

	belongs_to :product
	belongs_to :user

		validates :razon,
			presence: true
		validates :precio, 
			presence: true,
			inclusion: 1..9999
		validates :tarjeta,
			presence: true,
			numericality: true
		validates :codigo,
			presence: true,
			numericality: true
				

end
