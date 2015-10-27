class Product < ActiveRecord::Base
	
	default_scope -> { order("vencimiento") }

	
	belongs_to :category
	belongs_to :user
end
