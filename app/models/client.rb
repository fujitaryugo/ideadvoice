class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy
  has_many :awards, dependent: :destroy
  has_many :presents,dependent: :destroy
  attachment :client_image

  validates :group_name,presence: true, length:{ in: 1..50 }
  validates :last_name,presence: true, length:{ in: 1..50 }
  validates :first_name,presence: true, length:{ in: 1..50 }
  validates :phone_number,presence: true,length:{ in: 9..20 },format:{with:/\A[0-9]+\z/ ,message:'は数字で入力してください。'}
  validates :client_url,presence: true
  validates :introduction,presence: true, length:{ in: 1..300 }

end
