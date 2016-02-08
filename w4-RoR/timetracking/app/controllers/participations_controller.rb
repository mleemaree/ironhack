class ParticipationsController < ApplicationController

	def index 
		@participations = Participiation.all
	end

	def show
		@person = Person.find(params[:id])
		@local = @person.projects
	end

	def new
		@participation = Participation.new
		@projects = Project.all
		@person = Person.find params[:person_id]
	end

	def associate
		@person = Person.find params[:id]
		@project = Project.find params[:project_id]
		@person.projects << @project
		redirect_to person_path(@person)
	end

end
