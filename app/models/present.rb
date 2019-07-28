class Present < ApplicationRecord
	belongs_to :client
	belongs_to :user
	belongs_to :idea
	validates :message,presence: true,length: { minimum: 1 }
end
