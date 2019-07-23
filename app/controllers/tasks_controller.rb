class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
  end

  def new
    @company = current_user.company
    @task = Task.new
    @task.company = current_user.company
    authorize @task
  end

  def create
    @company = current_user.company
    @task = Task.new(task_params)
    @task.company = current_user.company
    @flat = Flat.find(params[:flat_id])
    @task.flat = @flat
    @task.user = current_user
    @user_ids = participation_params[:user_ids]
    @user_ids.each do |id|
      if User.exists?(id)
        participation = Participation.new(user_id: id, task: @task)
        participation.save
      end
    end
    authorize @task
    if @task.save
      redirect_to flat_path(@flat)
    else
      render :new
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
    params.require(:task).permit(:title, :description, :status, :urgency, :category_id, :user_id, participation_ids: [])
  end

  def participation_params
    params[:task][:user_ids]  ||= []
    params.require(:task).permit( user_ids: [] )
  end
end
