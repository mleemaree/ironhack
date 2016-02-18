class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		@split = params[:search]
		@searched = @movies.select { |movie| movie.title.downcase == @split}
		if @searched == []
			@split != nil ? @imdb_search = Imdb::Search.new(@split).movies[0..1] : @imdb_search = {}
		end

	end

	def show
		@m = Imdb::Movie.new(params[:id])
		movies = Movie.all
		@movie = Movie.new(title: @m.title, poster: @m.poster, year: @m.year, synopsis: @m.plot_summary)
		@movie.save unless movies.select{|m| m['title'] == @movie.title } != []
	end

	def create
	end

end
