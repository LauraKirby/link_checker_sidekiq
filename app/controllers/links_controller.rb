class LinksController < ApplicationController
  def index
  	@link = Link.find_by_id(params[:id])
  	@links = Link.all 
  end

  def new
  	@link = Link.new
  end

  def create 
  	@link = Link.create(link_params)
  	redirect_to index_path
  end 

  def show
  	
  end

 private 
  def link_params
  	params.require(:link).permit(:name, :url, :status)
  end
end