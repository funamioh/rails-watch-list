# class MoviesController < ApplicationController
#   before_action :set_movie, only: %i[ show edit update destroy]
#   def index
#     @movies = Movies.all
#   end

#   def show
#   end

#   def new
#     @movie = Movie.new
#   end

#   def edit
#   end

#   def create
#     @movie = Movie.new(movie_params)
#   end

#   def update
#     if @movie.update(movie_params)
#       redirect_to @movie, notice: "Movie was successfully udpated"
#     else
#       render :edit, status: :unprocessable_entity
#     end
#   end

#   def destroy
#     @movie = Movie.destroy
#     redirect_to movie_url, notice: "Movie was successfully deleted"
#   end

#   private

#   def set_movie
#     @movie = Movie.find(params[:id])
#   end

#   def movie_params
#     params.require(:movie).permit(:title, :overview, :poster_url, :rating)
#   end
# end
