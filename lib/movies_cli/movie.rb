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
        temp = @times.join(" , ")    
        puts temp
    end

end