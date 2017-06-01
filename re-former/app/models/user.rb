class User < ApplicationRecord
	validates :username, 	presence: true,
												length: { maximum: 60 }
	validates :email,			presence: true,
												length: { maximum: 255 }
end
