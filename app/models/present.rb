class Present < ApplicationRecord
	belongs_to :client
	belongs_to :user
	belongs_to :idea
end
