class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :nickname, presence: true
end
