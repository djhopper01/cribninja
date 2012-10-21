class ListingsController < ApplicationController

  respond_to :html, :json

  def index
  end

  def search
  end

  def new
    @listing = Listing.new
    respond_with @listing
  end

  def create
    @listing = current_user.listings.build params[:listing]
    @listing.save
    respond_with @listing
  end

  def show
    @listing = Listing.find(params[:id])
    respond_with @listing
  end
end
