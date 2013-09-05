class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  end

  def show
  	@task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new

  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to :action => :index, :controller => :task  
  end

end
