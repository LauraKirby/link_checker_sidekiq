class LinksController < ApplicationController
	before_action :find_website
	
  def index
    @doc = Nokogiri::HTML(open(@website.site_url))
    @links = []
    @anchors = @doc.css("a")
    # binding.pry
    # loop through the anchor tags and put all the urls into an array.

    @anchors.each do |anchor|
      if anchor.attr("href").include?("http") || anchor.attr("href").include?("https")
      @links << anchor.attr("href")
      end 
    end
    #binding.pry
  end

  def create 
  	@link = Link.create(link_params)
  	# redirect_to index_path
  end 

  def show
  end

 private 


  def find_website
  	@website = Website.find_by_id(params[:website_id])
  end 
end