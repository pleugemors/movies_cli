CLI
    Main interface for the user
    asks for zipcode to find theeters and movies
    send response to scraper to get the information
    list theaters
    ask which theater to discover movies
    take input and return movies from the theater chosen

    repeat until user wants to exit

Scraper
    takes zipcode and places into url for fandango
    takes information from fandango and places into the appropriate classes

Theater class
    Keeps information about all theaters in @@all variable
    theater instance variables : @movies -> array of movies showing at the theater
    methods list movies -> list all movies playing
    print all-> prints all theaters that was scraped from the address

