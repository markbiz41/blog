class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :category
  has_many :comments
end
