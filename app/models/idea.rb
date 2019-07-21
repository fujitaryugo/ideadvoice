class Idea < ApplicationRecord
	belongs_to :user
	belongs_to :order
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
    has_many :awards, dependent: :destroy
    def awarded_by?(client)
      awards.where(client_id: client.id).exists?
    end
end
