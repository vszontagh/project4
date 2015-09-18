class CategoriesController < ApplicationController

  def index
    @category = Category.all
    
    # Meetup API
    response = HTTParty.get("https://api.meetup.com/2/events?key=" + ENV["MEETUP_KEY"] + "&group_urlname=ny-tech&sign=true", 
      headers:{
        "MeetupKey" =>ENV["MEETUP_KEY"],
        "Accept" =>"application/json"
      })
  
   @group = response["results"][2]["group"]["name"]
  end

  def show
    @category = Category.all

  end

end
