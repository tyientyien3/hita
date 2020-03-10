class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum user_status: {
    "日本在住": 0,
    "日本在住（海外経験あり）": 1,
    "海外在住": 2,
  }

  attachment :profile_image

  #エイリアス
  has_many :questioner, foreign_key: "questioner_id", class_name: "Question" #質問者
  has_many :questionee, foreign_key: "questionee_id", class_name: "Question" #回答者

  belongs_to :country
  belongs_to :region

  #いいね機能
  has_many :liked_questions, through: :favorites, source: :question
  has_many :favorites, dependent: :destroy
  has_many :questions, dependent: :destroy

  # すでにいいねしているかの判定
  def already_liked?(question)
    self.favorites.exists?(question_id: question.id)
  end
end
