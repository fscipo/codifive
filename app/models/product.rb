class Product < ActiveRecord::Base
	
	default_scope -> { order("vencimiento desc") }

	
	belongs_to :category
	belongs_to :user
end
