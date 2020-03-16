class Comment < ApplicationRecord
	validates :name, presence: true 
	validates :comment, presence: true , length: {minimum: 5}
	belongs_to :post
end
