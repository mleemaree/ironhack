class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
		if @projects.empty?
			render 'no_projects'
		end
		# @projects = Project.last_create_projects
	end

	def show
		@project = Project.find params[:id]
	rescue ActiveRecord::RecordNotFound
		render 'no_projects_found'
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	private

	def project_params
		params.require(:project).permit(:name, :description)
	end

end
