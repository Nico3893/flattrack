class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = policy_scope(Flat)
      @flats = Flat.search_function(query_params)
    else
      @flats = policy_scope(Flat)
    end

    @flats_geocoded = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats_geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  private

  def query_params
    params.require(:query)
  end
end
