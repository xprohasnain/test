class Post < ApplicationRecord
	validates :title, presence: true , length: {minimum: 5}
	validates :content, presence: true , length: {minimum: 5}
	has_many :comments ,dependent: :destroy 
end
