require_relative "MoviesScraper.rb"
class MoviesCli

    def run
        puts "Enter your zip code to find out the movies that are running near you: "
        zip = gets.strip
        MoviesScraper.new(zip)
        #scrape data
        #list theaters
            puts "Finding theaters in zipcode #{zip}: "
            puts "1. cinemark"
            puts "2. Dollar theather"
        puts "Which theater do you want to see the movies playing at?"
        
        choice = gets.chomp
        case choice
        when "1"
            puts "theater 1 movies"
        when "2"
            puts "theater 2 movies"
        end
        
    end


end