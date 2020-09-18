class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        genres = []
        all_songs = songs
        all_songs.each {|song| genres << song.genre}
        genres.uniq
    end

    def artists
        artists = []
        all_songs = songs
        all_songs.each {|song| artists << song.artist}
        artists.uniq
    end


end