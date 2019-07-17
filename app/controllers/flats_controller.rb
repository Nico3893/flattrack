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
       #  infoWindow: render_to_string(partial: "infoWindow", locals: {flat: flat}),
        image_url: 'home-location-marker.png'
      }
    end
    @company = current_user.company
    @tasks =  @company.tasks.where(urgency: 3)
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
    @task = Task.new
    @task.company = current_user.company
  end

  private

  def query_params
    params.require(:query)
  end
end
