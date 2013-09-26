class News < ActiveRecord::Base
  attr_accessible :content, :news_image, :title

  mount_uploader :news_image, NewsImageUploader

  @news_item = News.order("created_at").first
end
