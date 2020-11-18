class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres.push(genre)
        @@count += 1
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        place = {}
        @@genres.each do|genre|
            place[genre] = @@genres.count(genre)
        end
        place
    end

    def self.artist_count
        place = {}
        @@artists.each do  |artist|
            place[artist] = @@artists.count(artist)
        end
        place
    end
end