class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :user_image
  has_many :ideas, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name,presence: true, length:{ in: 1..20}
  
  enum sex: {
  	"性別未選択": 0,"男性": 1,"女性": 2,"無回答": 3
  }
  enum age: {
  	"年代未選択": 0, "10代": 1,"20代": 2,"30代": 3,"40代": 4,
  	"50代": 5,"60代": 6,"70代": 7,"80代": 8,"90代": 9,"100代以上": 10
  }
  enum location: {
    "所在地未選択": 0,"北海道": 1,"青森県": 2,"岩手県": 3,"宮城県": 4,"秋田県": 5,"山形県": 6,"福島県": 7,
    "茨城県": 8,"栃木県": 9,"群馬県": 10,"埼玉県": 11,"千葉県": 12,"東京都": 13,"神奈川県": 14,
    "新潟県": 15,"富山県": 16,"石川県": 17,"福井県": 18,"山梨県": 19,"長野県": 20,
    "岐阜県": 21,"静岡県": 22,"愛知県": 23,"三重県": 24,
    "滋賀県": 25,"京都府": 26,"大阪府": 27,"兵庫県": 28,"奈良県": 29,"和歌山県": 30,
    "鳥取県": 31,"島根県": 32,"岡山県": 33,"広島県": 34,"山口県": 35,
    "徳島県": 36,"香川県": 37,"愛媛県": 38,"高知県": 39,
    "福岡県": 40,"佐賀県": 41,"長崎県": 42,"熊本県": 43,"大分県": 44,"宮崎県": 45,"鹿児島県": 46,"沖縄県": 47,"海外": 48
  }
  enum job: {
  	"職業未選択": 0,"会社員": 1,"公務員": 2,"個人事業主": 3,"主婦": 4,"パート": 5,"アルバイト": 6,"フリーター": 7,
  	"大学生": 8,"大学院生": 9,"短大生": 10,"専門学校生": 11,"高校生以下": 12,"その他": 13
  }
end
