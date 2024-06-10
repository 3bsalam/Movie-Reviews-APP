class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :movie, null: false, foreign_key: true
      t.integer :rating
      t.text :review_text

      t.timestamps
    end
  end
end
