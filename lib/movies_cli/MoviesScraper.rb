require "nokogiri"
require "open-uri"
require "pry"
require_relative "theater"
require_relative "movie"
class MoviesScraper

    @@all = []
 
    def self.all
        @@all 
    end

    def initialize(zipcode)
        @url = "https://www.imdb.com/showtimes/US/" + zipcode 
    end

    def collect
        html = File.read(open(@url))
        information = Nokogiri::HTML(html)
        theaters = getTheaters(information)
    end

    def getTheaters(web_info)
        #theaters are seperated div.list_item odd/even
        theaters = web_info.css("div.list_item.odd") + web_info.css("div.list_item.even")
        name = ""
        #make theaters by getting name/address
        theaters.each do |theater|
            addr = ""
            name = theater.css("h3").text.strip
            theater.css("div.address span").each do |element|
                addr += element.text.strip + " "
            end
            temp = Theater.new(name, addr)
            movies = theater.css("div.info")
            #binding.pry
            getMovies(temp, movies)
        end
    end

    def getMovies(theater, movies)
        movies.each do |movie|
            name = movie.css("h4").text.strip
            temp = Movie.new(name)
            times = movie.css("div.showtimes a[target]")[1..-1]
            if !times.nil?
                times.each do |time|
                    #showtimes a[target] included Get Tickets if there was also a IMAX portion with the movie
                    if time.text.strip != "Get Tickets"
                        temp.add_time(time.text.strip)
                    end
                end
            end
            theater.add_movie(temp) 
        end
    end
end