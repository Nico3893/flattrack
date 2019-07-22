class InventoriesController < ApplicationController
  def index
    @flat = Flat.find(params[:flat_id])
    @inventories = policy_scope(Inventory) if @flat.company == current_user.company
    # @inventories = policy_scope(Inventory)
    @inventories = Flat.find(params[:flat_id]).inventories
  end
end
