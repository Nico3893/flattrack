class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit]

  def index
    @tasks = policy_scope(Task)
  end

  def show
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    authorize @task
  end

  def edit
  end

  def update
  end

  private

  def set_task
    @task = Task.find(params[:id])
    authorize @task
  end

  def task_params
    params.require(:task).permit(:title, :description)
end
