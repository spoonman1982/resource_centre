class PageContent < ActiveRecord::Base
  attr_accessible :content, :image, :title

  mount_uploader :image, ImageUploader

  has_many :line_items
  has_many :pages, through: :line_items

end
