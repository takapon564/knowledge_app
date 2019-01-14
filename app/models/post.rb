class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 30 }
end
