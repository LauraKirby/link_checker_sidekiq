class WebsitesController < ApplicationController

  def new
  	@website = Website.new
  	render :index 
  end

  def create 
  	@website = Website.create website_params
  	if @website.save
  		redirect_to website_links_path @website
  	else 
  		render :index
  	end
  end 

 private 
  def website_params
  	params.require(:website).permit(:site_name, :site_url)
  end

  # def find_website
  # 	@website = Website.find params[:website_id]
  # end 
end