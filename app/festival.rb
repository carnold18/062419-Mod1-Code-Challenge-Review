class Festival

    attr_accessor :title, :location

    @@all = []
    
    def initialize(title, location)
        @title = title
        @location = location
        @@all << self
    end

    

    def self.all
        @@all
    end

end