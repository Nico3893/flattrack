class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = policy_scope(Flat)
      @flats = Flat.search_function(query_params)
    else
      @flats = policy_scope(Flat)
    end

    @flats_geocoded = Flat.where.not(latitude: nil, longitude: nil).where(company: current_user.company)

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
    @utilities = utilities
    @cashflow = cash_flow
  end

  private

  def query_params
    params.require(:query)
  end

  def utilities
    utilities = 0
    category = TransactionCategory.find_by_name("utilities")
    @flat.transactions.each do |transaction|
      utilities += transaction.amount if transaction.category == category
    end
    return utilities
  end

  def cash_flow
    cash = 0
    @flat.transactions.each do |transaction|
      transaction.is_expense ? cash -= transaction.amount : cash += transaction.amount
    end
    return cash
  end
end
