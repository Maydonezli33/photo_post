class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :icon
  has_many :posts, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }
end