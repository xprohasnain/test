class Comment < ApplicationRecord
	validates :comment, exclusion: { in: %w(www  adult bad nude nudity),
    message: "%{value} word is blocked." }
	validates :name, presence: true 
	validates :comment, presence: true , length: {minimum: 5},uniqueness: { case_sensitive: false }
	validates :comment, allow_blank: true
	validates :comment,inclusion: { in: %w(Good Very_Good medium large)}
	belongs_to :post
end
