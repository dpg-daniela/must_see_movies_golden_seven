class AddTitleToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :image, :string
    add_column :movies, :title, :string
    add_column :movies, :year, :string
    add_column :movies, :duration, :string
    add_column :movies, :description, :string
    add_column :movies, :director_id, :string
  end
end
