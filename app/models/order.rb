class Order < ApplicationRecord
	belongs_to :client
	attachment :order_image
	attachment :reward_image
	has_many :ideas, dependent: :destroy

	validates :order_title,presence: true,length:{ in: 1..100}
	validates :order_text,presence: true,length: { minimum: 1 }
	validates :deadline,presence: true
	validates :reward_content,presence: true,length:{ in: 1..300}
end
