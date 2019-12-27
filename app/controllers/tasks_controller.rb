class TasksController < ApplicationController
	before_action :find_params, only [:show, :edit, :update, :destroy]

	def index
	end

	def show
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

		if @task.save
			redirect_to @task
		else
			render 'new'
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def task_params
		params_require(:task).permit(:title, :description, :url, :company)
	end

	def find_task
		@task = Task.find(params[:id])
	end

end
