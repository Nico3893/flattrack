class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = policy_scope(Flat)
      @flats = Flat.search_function(query_params)
    else
      @flats = policy_scope(Flat)
    end
  end

  def show
    @flat = Item.find(params[:id])
    authorize @flat
  end

  private

  def query_params
    params.require(:query)
  end
end
