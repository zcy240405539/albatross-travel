class User < ApplicationRecord
#	enum role: [:default, :manager, :admin]
#	after_initialize :set_default_role, :if => :new_record?

#	def set_default_role
#		self.role ||= :default
#	end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_many :posts
	has_many :comments
end
