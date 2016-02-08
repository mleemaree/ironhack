class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, numericality: true, presence: true
	validates :minutes, numericality: true, presence: true
	validates :date, presence: true
	validates :project, presence:true

	def create
		obj = Obj.new(params[:obj])
	end
end
