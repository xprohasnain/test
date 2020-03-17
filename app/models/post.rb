class Post < ApplicationRecord
	validates :title, presence: true , length: {minimum: 5}
	validates :content, presence: true , length: {minimum: 5},allow_blank: true
	has_many :comments ,dependent: :destroy
	validates :content,uniqueness: { case_sensitive: false }
end
