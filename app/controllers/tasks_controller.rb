class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
  end

  def new
    @task = Task.new
    @task.company = current_user.company
    @categories = TaskCategory.all
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.company = current_user.company
    @flat = Flat.find(params[:flat_id])
    @categories = TaskCategory.all
    @task.flat = @flat
    @task.user = current_user

    authorize @task
    if @task.save
      # create comment
      @comment = Comment.new(comment_params)
      @comment.task = @task
      @comment.user = @task.user
      authorize @comment
      if @comment.save
        raise
        # create participations
        @user_ids = participation_params[:user_ids]
        @user_ids.each do |id|
          if User.exists?(id)
            participation = Participation.new(user_id: id, task: @task)
            participation.save
          end
        end

      else
        render :new
      end
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
    params.require(:task).permit(:title, :description, :urgency, :category_id, :comment)
  end

  def comment_params
    params.require(:task).require(:comment).permit(:text)
  end

  def participation_params
    params.require(:task).permit(user_ids: [])
  end

end
