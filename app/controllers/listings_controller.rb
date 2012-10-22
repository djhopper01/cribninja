class ListingsController < ApplicationController

  respond_to :html, :json

  def index
    @listings = Listing.all
    respond_with @listings
  end

  def search
    search = Listing.search do
      with(:rent, params[:rent].to_i-250..params[:rent].to_i+250) if params[:rent].present?
      with(:number_of_bedrooms, params[:number_of_bedrooms]) if params[:number_of_bedrooms].present?
      with(:number_of_bathrooms, params[:number_of_bathrooms]) if params[:number_of_bathrooms].present?

      order_by :created_at, :desc
    end

    @listings = search.results
    respond_with @listings
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
