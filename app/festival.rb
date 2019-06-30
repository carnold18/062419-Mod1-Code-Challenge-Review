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

    def screenings
        Screening.all.select do |screening|
            screening.festival == self
        end
    end

    def films
        Film.all.select do |film|
            film.festival == self
        end
    end

end