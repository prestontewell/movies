class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "index.json.jbuilder"
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find_by(id:movie_id)
    render 'show.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      title: params[:input_title],
      runtime: params[:input_runtime]
      )
    @movie.save
    render 'show.json.jbuilder'
  end

  def update
    movie_id = params[:id]
    @movie = Movie.find_by(id:movie_id)
    @movie.update(
      title: params[:input_title],
      runtime: params[:input_runtime]
    )
    render 'show.json.jbuilder'
  end

  def destroy
    movie_id = params[:id]
    @movie = Movie.find_by[id:movie_id]
    @movie.destroy
    render 'show.json.jbuilder'
  end

end
