class AddUserToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :user, :string
  end
end
