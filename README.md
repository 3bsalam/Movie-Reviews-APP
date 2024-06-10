# MovieReviewsApp

MovieReviewsApp is a Ruby on Rails application for managing movies and their reviews. This application allows you to import movie and review data from CSV files, display a list of movies, search for movies by actor, and sort movies by their average rating.

## Ruby and Rails Versions

- **Ruby**: 3.1.2
- **Rails**: 7.1.3.4

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Ruby 3.1.2
- Rails 7.1.3.4
- PostgreSQL or SQLite (depending on your `database.yml` configuration)

### Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/3bsalam/MovieReviewsApp.git
    cd MovieReviewsApp
    ```

2. **Install dependencies**:

    ```bash
    bundle install
    ```

3. **Set up the database**:

    ```bash
    rails db:setup
    ```

### Importing Data

To import data from the CSV files (`movies.csv` and `reviews.csv`), run the import task:

1. **Place your CSV files in the root directory of the project**:

    Ensure you have `movies.csv` and `reviews.csv` in the root directory.

2. **Run the import task**:

    ```bash
    rake import:movies_and_reviews
    ```

### Running the Server

To start the Rails server, run:

```bash
rails server

