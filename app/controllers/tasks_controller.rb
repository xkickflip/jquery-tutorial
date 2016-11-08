class TasksController < ApplicationController

  def index
    @incomplete_tasks = Task.where(complete: false)
    @complete_tasks = Task.where(complete: true)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(allowed_params)

    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js # don't redirect on a js create stay on the same page
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(allowed_params)

    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js # don't redirect on a js create stay on the same page
    end
  end

  def destroy
    @task = Task.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to tasks_url }
      f.js # don't redirect on a js create stay on the same page
    end
  end

  private

  def allowed_params
    params.require(:task).permit(:name, :complete)
  end

end
