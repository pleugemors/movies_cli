require "nokogiri"
require "open-uri"
require "pry"
require_relative "./theater"
class MoviesScraper

    @@all = []
 
    def self.all
        @@all 
    end

    def initialize(zipcode)
        @url = "https://www.imdb.com/showtimes/US/" + zipcode 
    end

    def collect
        html = File.read(open(@url)
        )
        information = Nokogiri::HTML(html)
        theaters = getTheaters(information)
        binding.pry 
    end

    def getTheaters(web_info)
        theaters = web_info.css("div.list_item.odd") + web_info.css("div.list_item.even")
        name = ""
        theaters.each do |theater|
            addr = ""
            name = theater.css("h3").text.strip
            theater.css("div.address span").each do |element|
                addr += element.text.strip + " "
            end
            Theater.new(name, addr)
        end
        Theater.all
    end

    
end