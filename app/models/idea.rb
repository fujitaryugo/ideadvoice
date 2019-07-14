class Idea < ApplicationRecord
	belongs_to :user
	belongs_to :order
	attachment :user_image
end
