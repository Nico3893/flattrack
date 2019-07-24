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
        # create participations
        @user_ids = participation_params[:user_ids]
        @user_ids.each do |id|
          if User.exists?(id)
            participation = Participation.new(user_id: id, task: @task)
            participation.save
          end
        end
      end
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    @task.company = current_user.company
    @categories = TaskCategory.all
    authorize @task
  end

  def update
    @task = Task.find(params[:id])
    @flat = Flat.find(params[:flat_id])
    @categories = TaskCategory.all
    unless @task.category.id == task_params[:category_id][0].to_i
      @task.update( category_id: task_params[:category_id][0].to_i )
    end
    @task.update(task_params)
    authorize @task
    if @task.save
      # create comment
      unless comment_params[:text].empty?
        @comment = Comment.new(comment_params)
        @comment.task = @task
        @comment.user = @task.user
        authorize @comment
        @comment.save
      end
        # update participations
        @user_ids = participation_params[:user_ids]
        @user_ids.each do |id|
          if @task.users.ids.include?(id)
            part = Participation.find_by task: @task, user_id: id
            part.destroy
          elsif User.exists?(id)
            participation = Participation.new(user_id: id, task: @task)
            participation.save
          end
        end
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
