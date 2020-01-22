class MoviesScraper

    def initialize(zipcode)
        @url = "https://www.fandango.com/" + zipcode +"_movietimes"
        puts @url
    end
end