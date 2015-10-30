class MoviesController < ApplicationController

	def index
	@list_of_movies = Movie.all
	end

	def new_form
	end

	def create_row
	p = Movie.new
	p.title = params[:title]
	p.year = params[:year]
	p.duration = params[:duration]
	p.description = params[:description]
	p.image = params[:image_url]
	p.director_id = params[:director_id]
	@movie_id = p.id
	@title = p.title
	@year = p.year
	@duration = p.duration
	@description = p.description
	@image = p.image
	@director_id = p.director_id
	

	p.save

	
	

	end

	def show
  	@movie = Movie.find_by({ :id => params[:id] })
  	
  end

  	def edit_form
  	p = Movie.find_by({ :id => params[:id] })
  	@new_movie_id = p.id
  	@movie = Movie.find_by({ :id => params[:id] })
  	@previous_title = p.title
  	@previous_year = p.year
  	@previous_duration = p.duration
  	@previous_description = p.description
  	@previous_image_url = p.image
  	@previous_director_id = p.director_id
  	end

  	def edit_movie
  	p = Movie.find_by({ :id => params[:id] })
  	p.title = params[:new_title]
	p.year = params[:new_year]
	p.duration = params[:new_duration]
	p.description = params[:new_description]
	p.image = params[:new_image_url]
	p.director_id = params[:new_director_id]
  	p.save
  	@movie = Movie.find_by({ :id => params[:id] })

  	end

  	 def delete_row
  	p = Movie.find_by({ :id => params[:id] })
  	p.destroy

  	redirect_to("http://localhost:3000")
  	end

end