class Favorite < ApplicationRecord
  belongs_to :question
  belongs_to :user

  #1人が１つの投稿に対して、１つしかいいねをつけられないようにする
  validates_uniqueness_of :question_id, scope: :user_id
end
