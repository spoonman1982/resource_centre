class News < ActiveRecord::Base
  attr_accessible :content, :news_image, :title

  @news_item = News.order("created_at").first
end
