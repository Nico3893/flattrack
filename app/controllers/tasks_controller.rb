class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
  end

  def new
    @task = Task.new
    @task.company = current_user.company
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.company = current_user.company
    @flat = Flat.find(params[:flat_id])
    @task.flat = @flat
    authorize @task
    if @task.save
      redirect_to flat_path(@flat)
    else
      render :new
      # render errors instead
    end
  end

  def edit
    @task = Task.find(params[:id])
    authorize @task
  end

  def update
    @task = Task.new(task_params)
    @task.company = current_user.company
    @flat = Flat.find(params[:flat_id])
    @task.flat = @flat
    authorize @task
    if @task.save
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :status, :urgency, :category_id)
  end
end
