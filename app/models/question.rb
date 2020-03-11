class Question < ApplicationRecord
  #バリデーション
  validates :question, length: { in: 2..300 }

  #いいね機能
  has_many :favorites, dependent: :destroy
  has_many :liked_users, through: :favorites, source: :user

  def like_user(id)
    likes.find_by(user_id: id)
  end

  belongs_to :country
  belongs_to :region
  #エイリアス
  belongs_to :questioner, class_name: "User" #質問者
  belongs_to :questionee, class_name: "User" #回答者
end
