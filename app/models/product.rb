class Product < ActiveRecord::Base
	
	default_scope -> { order("vencimiento") }

	validates_presence_of :nombre
	validates_presence_of :descripcion
	validates_presence_of :foto

	belongs_to :category
	belongs_to :user
	has_many :offers
	has_many :questions
end
