class User < ApplicationRecord
	validates :username, presence: true, length: { maximum: 30 }
	validates :email,		 presence: true, length: { maximum: 40 }
	validates :password, presence: true, length: { minimum: 06 }
end
