class Question < ApplicationRecord
  belongs_to :country
  belongs_to :region
  #エイリアス
  belongs_to :questioner, class_name: "User" #質問者
  belongs_to :questionee, class_name: "User" #回答者
end
