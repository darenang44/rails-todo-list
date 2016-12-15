class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy, :complete]

  def index
    # @tasks = Task.all.order('created_at DESC')
    if user_signed_in?
      # to add restrictions we only want to show tasks that belong to the current user
      @tasks = Task.where(user_id: current_user.id).order('created_at DESC')
    end
  end

  def show
  end

  def new
    # @task = Task.new

    @task = current_user.tasks.build
  end

  def create
    # @task = Task.new(task_params)

    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update

    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit'
    end

  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  # this method is to mark the task completed
  # in the task model we created a method that will check if the completed_at attribute is blank
  def complete
    # the before_action is going to find the specific task for us
    # then we are going to update the :completed_at attribute with the current time
    @task.update_attribute(:completed_at, Time.now)
    # then we want to redirect_to the home page
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
