class PostsController < ApplicationController
  
  def new
    @post = Post.new
    @post["place_id"] = params["place_id"]
  end

  def create 
    # start with a new post
      @post = Post.new
  
    # assign user-entered form data to place table's columns
      @post["title"] = params["post"]["title"]
      @post["posted_on"] = params["post"]["posted_on"]
      @post["description"] = params["post"]["description"]
      @post["place_id"] = params["post"]["place_id"]
    
    # save new place row
      @post.save
    
    # redirect user
      redirect_to "/places/#{@post["place_id"]}"
    
    end
end
