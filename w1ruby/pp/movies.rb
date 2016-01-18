# require 'rubygems'
require 'imdb'
require 'pry'


  search = Imdb::Search.new('bat')
  a= []
  # s = search.movies[0..1].each{ |m| a.push([m.rating, m.title])}
  movies=search.movies
  firstm=movies.first

  movie = firstm.title + firstm.rating.to_s
  puts movie

 

