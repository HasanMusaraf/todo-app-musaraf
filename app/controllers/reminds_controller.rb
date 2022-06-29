class RemindsController < ApplicationController
  def index
    @tasks = Remind.all
  end

  # def new
  #   @task = Remind.new
  # end

  def create
    @task = Remind.new(task: params[:task], date: params[:date], completed: false)
    if @task.save
      redirect_to reminds_path
    end

end

def show
  @task = Remind.find(params[:id])

end

def edit
@task = Remind.find(params[:id])
end

def update
  @task = Remind.find(params[:id])
  if @task.update(task: params[:remind][:task], date: params[:remind][:date])
    redirect_to reminds_path
  else
    render :edit
  end
end 

def destroy
  @task = Remind.find(params[:id])
  @task.destroy
  redirect_to reminds_path

end


def mark 
  @task = Remind.find(params[:id])
  completed = params[:completed]
puts "hello #{completed}"
@task.completed = completed
@task.save!
redirect_to reminds_path
end

end
