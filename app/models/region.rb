class Region < ApplicationRecord
  belongs_to :country
  has_many :questions
  has_many :users
end
