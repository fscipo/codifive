class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :products
 has_many :questions
 has_many :offer

	validates :nombre,
		presence: true
	validates :apellido,
		presence: true
	validates :nacimiento,
		presence: true
	

end
