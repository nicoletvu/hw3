class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
  # renders places/new view with form to create a new place
    @place = Place.new
  end

  def show
  # find a place
    @place = Place.find_by({"id" => params["id"]})
    @posts = Post.where({"place_id" => @place["id"]})
  end

  def create 
  # start with a new place
    @place = Place.new

  # assign user-entered form data to place table's columns
    @place["name"] = params["place"]["name"]
  
  # save new place row
    @place.save
  
  # redirect user
    redirect_to "/places"
  
  end

end