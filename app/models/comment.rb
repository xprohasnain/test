class Comment < ApplicationRecord
	 validates :comment, exclusion: { in: %w(sex adult porn nude nudity),
    message: "%{value} word is blocked." }
	validates :name, presence: true 
	validates :comment, presence: true , length: {minimum: 5}
	belongs_to :post
end
