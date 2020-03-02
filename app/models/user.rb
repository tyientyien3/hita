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
end
