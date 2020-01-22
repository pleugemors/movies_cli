class Theater

    attr_accessor :name, :address, movies
    @@all = []

    def initialize(name, address)
        @name = name
        @address = address
        @movies = []
        @@all << self
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each.with_index(1) do |theater, i|
            puts "#{i}. #{theater.name} - #{theater.address}"
        end
    end

    def print_movies
        @movies.each.with_index(1) do |movie, i|
            puts "#{i}. #{movie.name}"
        end
    end

    def add_movie(movie_instance)
        if !movie_instance.is_a?(Movie)
            raise RunTimeError, "it can only add movies"
        else
            @movies << movie_instance
        end
            
    end
end