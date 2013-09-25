class PageContent < ActiveRecord::Base
  attr_accessible :content, :image, :page_id, :title

  mount_uploader :image, ImageUploader

  belongs_to :page
  #has_many :pages, through: :line_items

end
