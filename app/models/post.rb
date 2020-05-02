class Post < ApplicationRecord
  validates :title, presence: true
  validates :image_link, presence: true
  validates :content, presence: true

end
