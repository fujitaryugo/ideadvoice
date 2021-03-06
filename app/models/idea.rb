class Idea < ApplicationRecord
	belongs_to :user
	belongs_to :order
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_one :present


    validates :idea_title,presence: true,length:{ in: 1..100}
    validates :idea_text,presence: true,length:{ in: 1..300}

    def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end

    has_many :awards, dependent: :destroy
    def awarded_by?(client)
      awards.where(client_id: client.id).exists?
    end

    enum send_status: {
    	"未送信": 0,"送信済": 1

    }
end
