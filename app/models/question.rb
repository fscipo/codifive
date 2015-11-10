class Question < ActiveRecord::Base
	
	default_scope -> { order("created_at") }

	belongs_to :product
	belongs_to :user
end
