class Product < ActiveRecord::Base
	
	default_scope -> { order("vencimiento") }

	def self.search(search)
		where("nombre ILIKE ? OR descripcion ILIKE ?", "%#{search}%", "%#{search}%")
	end

	validates_presence_of :nombre
	validates_presence_of :descripcion
	validates_presence_of :foto
	

	belongs_to :category
	belongs_to :user
	has_many :offers, dependent: :destroy
	has_many :questions, dependent: :destroy
end
