class WebsitesController < ApplicationController

  def new
  	@website = Website.new
  	render :index 
  end

  def create 
  	@website = Website.create website_params
  	redirect_to website_links(params[:website_id]) #params[:id]
  end 

  def show
  	
  end

 private 
  def website_params
  	params.require(:website).permit(:site_name, :site_url)
  end
end