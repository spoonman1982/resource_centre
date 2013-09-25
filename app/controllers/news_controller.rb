class NewsController < ApplicationController

	def index
	  if 1 == 1
	    @news = News.new

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @news }
	    end
	  end
    @newses = News.all
	end

	def new
		@news = News.new
	end

	def create
		@news = News.new(params[:news])

	    if @news.save
	      redirect_to index_news_url, notice: 'News was successfully created.'
	    else
	      render action: "index"
	    end
	end
	  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news = News.find(params[:id])
    @news.destroy

    respond_to do |format|
      format.html { redirect_to news_index_url }
      format.json { head :no_content }
    end
  end
end