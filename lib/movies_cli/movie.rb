class Movie

    attr_reader :name, :times 
    
    def initialize(name)
        @name = name
        @times = []
    end

    def add_time(time)
        @times << time 
    end

    def print
        puts self.name
        @times.each do |time|
           puts time 
        end
    end

end