class PeopleController < ApplicationController

	def index
		@people = Person.all
	end

	def show
		@person = Person.find(params[:id])
		@projects = Project.all
		@available_projects = @person.projects
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new person_params
		if @person.save
			flash[:notice] = "Person successfully created"
			redirect_to action: :index
		else
			flast[:alert] = "Person not saved"
			render 'new'
		end
	end

	def associate_project
		@person = Person.find params[:id]
		@project = Project.find params[:project_id]
		@person.projects << @project
		redirect_to person_path(@person)
	end

	private
	def person_params
		params.require(:person).permit(:name, :email)
	end

end
