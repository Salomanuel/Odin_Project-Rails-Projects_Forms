class User < ApplicationRecord
	validates :username, 	length: { maximum: 12 }, 
												presence: true
	validates :email,			length: { maximum: 30 },
												presence: true
end
