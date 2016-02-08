class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries.where("created_at >= ? AND created_at <= ?", Date.today.beginning_of_month, Date.today.end_of_month)
	end

	def new
		@project = Project.find params[:project_id]
		@entry= @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry= @project.entries.new entry_params
		if @entry.save
			redirect_to action: 'index', controller: 'entries', project_id: @project.id
		else
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:id]
		@entry = @project.entries.find params[:project_id]
		def update
			@entry = Entry.find(params[:id])
			if @entry.update_attributes entry_params
				flash[:notice] = "Entry update successfully"
				redirect_to action: 'index'
			else
				flash.now[:errors] = @entry.errors.full_messages
				render 'edit'
			end
		end
	end

	def destroy
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
		@entry.destroy
			flash[:alert] = "Entry Deleted!"
		redirect_to project_entries_path(@project)
	end

	private

	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date, :comments)
	end

end
