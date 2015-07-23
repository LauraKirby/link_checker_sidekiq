require 'open-uri'
class LinksController < ApplicationController
	before_action :find_website
	
  def index
    @doc = Nokogiri::HTML(open(@website.site_url))
    binding.pry
  	@links = Link.all 

  end

  def create 
  	@link = Link.create(link_params)
  	redirect_to index_path
  end 

  def show
  end

 private 


  def find_website
  	@website = Website.find_by_id(params[:website_id])
  end 
end