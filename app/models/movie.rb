class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(id)
        Movie.find_by(id)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(id)
        self.update(id)
    end

    def self.update_all_titles(titles)
        Movie.update(title: titles)
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end 