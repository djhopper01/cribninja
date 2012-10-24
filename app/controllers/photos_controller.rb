class PhotosController < ApplicationController

  respond_to :js

  def create
    @photo = Photo.new
    @photo.image = params[:file] if params.has_key?(:file)
    @photo.save!

    respond_with @photo
  end

end