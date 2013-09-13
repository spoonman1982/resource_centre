class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all

    @pages.each do |page|
      @ancester = (Page.find(page)).name
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(params[:page])

    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(params[:page])
      redirect_to @page, notice: 'Page was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url 
  end
end
