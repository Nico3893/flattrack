class InventoriesController < ApplicationController
  def index
    @flat = Flat.find(params[:flat_id])
    @inventories = policy_scope(Inventory) if @flat.company == current_user.company
    @inventories = Flat.find(params[:flat_id]).inventories.where(deleted: false).where(replaced: false)
    @bedroom = @inventories.where(category: InventoryCategory.find_by_name("Bedroom"))
    @kitchen = @inventories.where(category: InventoryCategory.find_by_name("Kitchen"))
    @living = @inventories.where(category: InventoryCategory.find_by_name("Living Room"))
    @bathroom = @inventories.where(category: InventoryCategory.find_by_name("Bathroom"))
  end

  def destroy
    flat = Flat.find(params[:flat_id])
    inventory = Inventory.find(params[:id])
    authorize inventory
    company = current_user.company
    category = TaskCategory.find_by_name("Repair")
    title = "Replace #{inventory.description}"
    description = "#{inventory.name}, #{flat.address}"
    task = Task.new(user: current_user, company: company, category: category, flat: flat, urgency: 2, title: title, description: description)
    if task.save
      Participation.create!(user: current_user, task: task)
      inventory.replaced = true
      inventory.save
      sleep(2)
      redirect_to flat_inventories_path(flat)
    else
      redirect_to flat_inventories_path(flat), alert: "Inventory was not marked as 'to be replaced and task not created"
    end
  end

  private

  def task_params
  end
end
