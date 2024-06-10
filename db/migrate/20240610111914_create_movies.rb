class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.string :genre
      t.string :director
      t.string :actor

      t.timestamps
    end
  end
end
