class StaticPagesController < ApplicationController
  def home
  	@news_item = News.order("created_at").first
  end

  def contact_us
  end
end
