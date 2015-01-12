class TasksController < ApplicationController
  def index
    sleep 1
    @incomplete_tasks = Task.where(complete: false)
    @complete_tasks = Task.where(complete: true)
  end

  def new
    @task = Task.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @task = Task.create!(task_params)
    respond_to do |format|
      format.html {redirect_to tasks_url}
      format.js
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(task_params)
    respond_to do |format|
      format.html {redirect_to tasks_url}
      format.js
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html {redirect_to tasks_url}
      format.js
    end
  end

  def task_params
    params.require(:task).permit(:complete, :name)
  end

end
