class Project < ActiveRecord::Base
	has_many :entries
	has_many :participations
	has_many :people, through: :participations
	validates :name, presence: true, uniqueness: true, length: {maximum: 30} 
	validates :name, format: {with: /\A[^\s][a-zA-z0-9\s]+\z/}

	def self.iron_find(id)
		where(id: id).first
	end

	def self.clean_old
	    Project.where("created_at > ?", Time.now - 1.day).destroy_all
	end

end
