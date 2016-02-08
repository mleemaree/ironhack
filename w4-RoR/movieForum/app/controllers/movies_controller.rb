class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		@split = params[:search].downcase
		@searched = @movies.select { |movie| movie.title.downcase == @split}
		if @searched == []
			@imdb_search = Imdb::Search.new(@split).movies
		end

	end

end
