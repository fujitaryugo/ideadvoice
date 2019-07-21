class Order < ApplicationRecord
	belongs_to :client
	attachment :order_image
	attachment :reward_image
	has_many :ideas, dependent: :destroy

end
