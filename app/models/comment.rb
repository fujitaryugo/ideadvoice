class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :idea

	validates :comment_text,presence: true,length:{ in: 1..300}
end
