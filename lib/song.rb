require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@genres << self.genre
        @@artists << self.artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = @@genres.detect{ |e| @@genres.count(e) > 1 }
    end

    def self.artists
        @@artists.uniq

    end

    def self.artist_count
    end
end