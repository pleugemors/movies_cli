require_relative "MoviesScraper"
class MoviesCli

    def run
        running = true 
        while running do
            zip = getZip
            MoviesScraper.new(zip).collect
            printTheaters(zip)
            #binding.pry
            choice = getChoice(Theater.all)
            theater = Theater.all[choice]
            printMovies(choice)
            chooseMovie(theater)
            running = wantCont
        end
    end
    
    def getZip
        puts "Enter your zip code to find out the movies that are running near you: "
        gets.strip
    end

    def printTheaters(zip)
        puts "Finding theaters in zipcode #{zip}: "
        Theater.print_all
        puts "Which theater do you want to see the movies playing at?"
    end

    def printMovies(index)
        temp = Theater.all
        puts temp[index].name
        temp[index].print_movies
    end

    def chooseMovie(theater)
        puts "Which movie would you like to see times for?"
        item = getChoice(theater.movies)
        theater.movies[item].print
    end

    def wantCont
        puts "Do you want to try another zipcode?"
        result = gets.chomp.upcase
        if result == "Y" || result == "YES"
            Theater.clear
            true
        else
            false
        end
    end

    def getChoice(array)
        choice = gets.chomp.to_i-1
        while choice < 0 || choice > array.size - 1 do
            puts "Invalid choice.  Please choose a number from 1 to #{array.size}"
            choice = gets.chomp.to_i-1
        end
        choice 
    end
end