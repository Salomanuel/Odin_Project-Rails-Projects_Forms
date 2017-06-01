class User < ApplicationRecord
	validates :username, 	presence: true,
												length: { maximum: 60 }
	VALID_EMAIL_REGEX = /[-\w.+]+@[a-z.]+\.\w+/i

	validates :email,			presence: true,
												length: { maximum: 255 },
		                    format: { with: VALID_EMAIL_REGEX }
end