class RenameGenreToDescriptionInMovies < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :genre, :description
  end
end
