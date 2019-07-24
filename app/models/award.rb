class Award < ApplicationRecord
	belongs_to :client
	belongs_to :idea
end
