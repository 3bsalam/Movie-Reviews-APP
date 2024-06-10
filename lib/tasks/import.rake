namespace :import do
  desc "Import movies and reviews from CSV files"
  task movies_and_reviews: :environment do
    require 'csv'

    # Import movies
    CSV.foreach(Rails.root.join('movies.csv'), headers: true) do |row|
      Movie.create(
        title: row['Movie'].presence || 'Unknown Title',
        release_year: row['Year'].presence || 0,
        genre: row['Description'].presence || 'Unknown Genre',
        director: row['Director'].presence || 'Unknown Director',
        actor: row['Actor'].presence || 'Unknown Actor'
      )
    end

    # Import reviews
    CSV.foreach(Rails.root.join('reviews.csv'), headers: true) do |row|
      movie = Movie.find_by(title: row['Movie'])
      next unless movie

      Review.create(
        movie: movie,
        user: row['User'].presence || 'Anonymous',
        rating: row['Stars'].presence || 0,
        review_text: row['Review'].presence || 'No review text'
      )
    end
  end
end
