class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :description, presence: true
  validates :post_url, url: true, presence: true

  # belongs_to :user
end
