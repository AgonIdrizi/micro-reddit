class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true,
				length: {in: 6..20}
	has_many :posts
	has_many :comments

	validates :username, presence: true, length: { maximum: 50},
				uniqueness: {case_sensitive: false}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},
					format: {with: VALID_EMAIL_REGEX },
					uniqueness: {case_sensitive: false}
	validates :password, presence: true, length: {minimum: 6}
end
