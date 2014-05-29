class PhotoController < ApplicationController
  def index
  end

  def show
  	@pho = Photos.find(:first, :conditions => ["hid = ?" , params[:cid]] , :select => "filename,content_type")
  end

end
